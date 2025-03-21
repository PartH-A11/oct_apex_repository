pipeline {
    agent any

    environment {
        APEX_WORKSPACE = "APEX_PIPELINE"
        APEX_USERNAME = "parth.suthar"
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "osprod.OSPROD"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/PartH-A11/oct_apex_repository'
                fingerprint 'f100401.sql'
            }
        }
        
        stage('Retrieve Credentials') {
            steps {
                script {
                    withCredentials([
                        usernamePassword(credentialsId: 'DBpassword', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASSWORD')
                    ]) {
                        env.DB_CONN = "${DB_USER}/${DB_PASSWORD1}@${DB_HOST}:1521/${DB_SERVICE}"
                    }
                }
            }
        }

        stage('Validate SQL Files') {
            steps {
                script {
                    def sqlclPath = "/u01/sqlcl/sqlcl/bin/sql"
                    def result = sh(script: "\"${sqlclPath}\" -s \"${DB_CONN}\" @App_Code/f100401.sql", returnStatus: true)
                    if (result != 0) {
                        error "SQL validation failed! Check script for errors."
                    }
                }
            }
        }

        

       /* stage('Restart ORDS') {
            steps {
                sh 'sudo systemctl restart ords'
            }
        }*/

        stage('Notify') {
            steps {
                echo "Deployment successful! APEX Application is live on: https://bkp2.octalsoft.com/apex/r/apex/workspace-sign-in"
            }
        }
    }
}
