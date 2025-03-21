pipeline {
    agent any

    environment {
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
        WORKSPACE_DIR = "apex_pipeline"
        FILE_NAME = "f234.sql"
        APEX_URL = "https://bkp2.octalsoft.com/apex/r/apex/workspace-sign-in/oracle-apex-sign-in"
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
                        env.DB_USER = DB_USER
                        env.DB_PASSWORD = DB_PASSWORD
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD}@${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Upload APEX Application File') {
            steps {
                script {
                    def filePath = "${WORKSPACE_DIR}/${FILE_NAME}"

                    echo "Uploading APEX application file: ${FILE_NAME} to workspace: ${WORKSPACE_DIR}"

                    sh """
                    curl -X POST --user ${env.DB_USER}:${env.DB_PASSWORD} \\
                        -F "workspace=${WORKSPACE_DIR}" \\
                        -F "file=@${filePath}" \\
                        "https://bkp2.octalsoft.com/apex/rest/upload"
                    """
                }
            }
        }

        stage('Notify') {
            steps {
                echo "Upload successful! APEX application file ${FILE_NAME} has been uploaded to workspace: ${WORKSPACE_DIR}"
                echo "Access the Oracle APEX application here: ${APEX_URL}"
            }
        }
    }
}
