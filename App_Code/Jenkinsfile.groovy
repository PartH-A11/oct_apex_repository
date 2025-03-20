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
                script {
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: 'main']],
                        userRemoteConfigs: [[
                            url: 'https://github.com/PartH-A11/oct_apex_repository.git',
                            credentialsId: 'github-creds'
                        ]]
                    ])
                }
            }
        }
    }
}
