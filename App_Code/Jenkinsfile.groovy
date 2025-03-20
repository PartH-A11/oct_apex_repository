pipeline {
    agent any

    environment {
        APEX_WORKSPACE = "edc_jcdc_dev"
        APEX_USERNAME = "parth.suthar"
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "OSPROD"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/PartH-A11/oct_apex_repository'
            }
        }
        
        stage('Retrieve Credentials') {
            steps {
                script {
                    // Fetch credentials securely from Jenkins
                    withCredentials([
                        usernamePassword(credentialsId: 'apex-db-creds', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASSWORD')
                    ]) {
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD}@//${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Validate SQL Files') {
            steps {
                script {
                    def result = bat(script: "sqlcl -s \"${DB_CONN}\" @validate.sql", returnStatus: true)
                    if (result != 0) {
                        error "SQL validation failed!"
                    }
                }
            }
        }

        stage('Deploy APEX Application') {
            steps {
                bat "sqlcl -s \"${DB_CONN}\" @f100401.sql"
            }
        }

        stage('Restart ORDS') {
            steps {
                bat 'net stop ords && net start ords'
            }
        }

        stage('Notify') {
            steps {
                echo "Deployment successful! APEX Application is live on: http://bkp2.octalsoft.com/apex"
            }
        }
    }
}
