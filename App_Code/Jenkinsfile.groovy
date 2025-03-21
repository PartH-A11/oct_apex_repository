pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                script {
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: 'develop']],
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
