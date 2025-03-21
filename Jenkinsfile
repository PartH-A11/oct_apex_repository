pipeline {
    agent any

    environment {
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
        WORKSPACE_DIR = "apex_pipeline"  // Target workspace where files will be uploaded
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

        stage('Upload SQL Files to APEX Workspace') {
            steps {
                script {
                    def sqlFiles = findFiles(glob: '**/*.sql') // Find all SQL files

                    sqlFiles.each { file ->
                        echo "Uploading SQL file: ${file.name} to APEX workspace ${WORKSPACE_DIR}"
                        
                        sh """
                        curl -X POST --user ${DB_USER}:${DB_PASSWORD} \\
                            -F "workspace=${WORKSPACE_DIR}" \\
                            -F "file=@${file.path}" \\
                            "https://bkp2.octalsoft.com/apex/rest/upload"
                        """
                    }
                }
            }
        }

        stage('Notify') {
            steps {
                echo "Upload successful! SQL files have been uploaded to APEX workspace: ${WORKSPACE_DIR}"
            }
        }
    }
}
