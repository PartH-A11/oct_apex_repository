pipeline {
    agent any

    parameters {
        string(name: 'USER_APEX_APP_ID', defaultValue: '12345', description: 'Enter the user-specific APEX Application ID')
    }

    environment {
        APEX_WORKSPACE = "APEX_PIPELINE"
        APEX_USERNAME = "parth.suthar"
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
        APEX_APPLICATION_ID = "${params.USER_APEX_APP_ID}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/PartH-A11/oct_apex_repository'
                fingerprint 'f234.sql'

                // Verify app_export.sql exists after checkout
                script {
                    def fileExists = sh(script: "[ -f app_export.sql ] && echo 'exists'", returnStdout: true).trim()
                    if (fileExists != 'exists') {
                        error "File 'app_export.sql' is missing! Ensure it is present in the repository."
                    }
                }
            }
        }

        stage('Retrieve Credentials') {
            steps {
                script {
                    withCredentials([
                        usernamePassword(credentialsId: 'DB_PASSWORD', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASSWORD')
                    ]) {
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD}@${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Prepare APEX SQL File') {
            steps {
                script {
                    def appExportPath = "apex_app_${APEX_APPLICATION_ID}.sql"

                    // Ensure app_export.sql exists, or create it
                    def fileExists = sh(script: "[ -f app_export.sql ] && echo 'exists'", returnStdout: true).trim()
                    if (fileExists != 'exists') {
                        echo "Creating 'app_export.sql' as it is missing!"
                        sh "touch app_export.sql"
                        sh "echo 'prompt Application: ${APEX_APPLICATION_ID} - APEX Export' > app_export.sql"
                    }

                    // Replace the Application ID
                    sh """
                        sed -i 's/^prompt Application: [0-9]\\+/prompt Application: ${APEX_APPLICATION_ID}/' app_export.sql
                        mv app_export.sql ${appExportPath}
                    """
                }
            }
        }

        stage('Validate SQL Files') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def result = sh(script: "\"${sqlclPath}\" -s \"${DB_CONN}\" @f234.sql", returnStatus: true)
                    if (result != 0) {
                        error "SQL validation failed! Check script for errors."
                    }
                }
            }
        }

        stage('Upload APEX Application') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def appExportPath = "apex_app_${APEX_APPLICATION_ID}.sql"

                    // Import the modified application
                    def result = sh(script: "\"${sqlclPath}\" -s \"${DB_CONN}\" @${appExportPath}", returnStatus: true)
                    if (result != 0) {
                        error "APEX application upload failed!"
                    }
                }
            }
        }

        stage('Notify') {
            steps {
                echo "Deployment successful! APEX Application is live on: https://bkp2.octalsoft.com/apex/r/apex/workspace-sign-in"
            }
        }
    }
}
