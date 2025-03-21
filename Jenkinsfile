pipeline {
    agent any

    environment {
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
        WORKSPACE_DIR = "apex_pipeline"  // Dynamically fetch workspace
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/PartH-A11/oct_apex_repository'
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

        stage('Validate SQL Files') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def sqlFiles = findFiles(glob: "${WORKSPACE_DIR}/**/*.sql")
                    
                    sqlFiles.each { file ->
                        def result = sh(script: "\"${sqlclPath}\" -s \"${DB_CONN}\" @${file.path}", returnStatus: true)
                        if (result != 0) {
                            error "SQL validation failed for ${file.name}! Check script for errors."
                        }
                    }
                }
            }
        }

        stage('Deploy APEX Application') {
            steps {
                script {
                    def sqlFiles = findFiles(glob: "${WORKSPACE_DIR}/**/*.sql")
                    sqlFiles.each { file ->
                        echo "Deploying SQL file: ${file.name}"
                        sh "/u01/sqlcl/sqlcl/bin/sql -s \"${DB_CONN}\" @${file.path}"
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
