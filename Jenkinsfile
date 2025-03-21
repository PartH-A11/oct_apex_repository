pipeline {
    agent any

    environment {
        APEX_WORKSPACE = "apex_pipeline"
        APEX_USERNAME = "parth.suthar"
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
        FILE_NAME = "f234.sql"
        APEX_URL = "https://bkp2.octalsoft.com/apex/r/apex/workspace-sign-in"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/PartH-A11/oct_apex_repository'
                fingerprint FILE_NAME
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

        stage('Upload APEX Application File') {
            steps {
                script {
                    def filePath = "${WORKSPACE}/${FILE_NAME}"

                    echo "Uploading APEX application file: ${FILE_NAME} to workspace: ${APEX_WORKSPACE}"

                    sh """
                    curl -X POST --user ${env.DB_USER}:${env.DB_PASSWORD} \\
                        -F "workspace=${APEX_WORKSPACE}" \\
                        -F "file=@${filePath}" \\
                        "https://bkp2.octalsoft.com/apex/rest/upload"
                    """
                }
            }
        }

        stage('Notify') {
            steps {
                echo "Upload successful! APEX application file ${FILE_NAME} has been uploaded to workspace: ${APEX_WORKSPACE}"
                echo "Access the Oracle APEX application here: ${APEX_URL}"
            }
        }
    }
}
