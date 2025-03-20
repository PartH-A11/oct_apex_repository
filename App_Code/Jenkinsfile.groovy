pipeline {
    agent any
    environment {
        APEX_WORKSPACE = "edc_jcdc_dev"
        APEX_USERNAME = "parth.suthar"
		APEX_PASSWORD = "Dell#123"
        DB_USER = "edc_jcdc_dev"
        DB_PASSWORD = "4*s2N$Ins6R(b#we@#a"  // Sensitive! Use Jenkins Credentials if possible.
        DB_HOST = "13.203.90.85"
        DB_SERVICE = "OSPROD"
        DB_CONN = "${DB_USER}/${DB_PASSWORD}@//${DB_HOST}:1521/${DB_SERVICE}"
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/PartH-A11/oct_apex_repositoryt'
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
                echo "Deployment successful!"
            }
        }
    }
}
