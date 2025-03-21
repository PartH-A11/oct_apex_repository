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
        APEX_APPLICATION_ID = "${params.USER_APEX_APP_ID}"  // Use User-Specific App ID
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/PartH-A11/oct_apex_repository'
                fingerprint 'f234.sql'
            }
        }

        stage('Retrieve Credentials') {
            steps {
                script {
                    withCredentials([
                        usernamePassword(credentialsId: 'DBpassword', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASSWORD')
                    ]) {
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD}@${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Modify APEX SQL File') {
            steps {
                script {
                    def appExportPath = "apex_app_${APEX_APPLICATION_ID}.sql"

                    // Replace the default Application ID in the SQL file with the user-specific ID
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

                    // Import the modified application to APEX_PIPELINE workspace
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
