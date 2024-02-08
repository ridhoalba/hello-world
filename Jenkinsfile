pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('Build') {
            steps {
                echo'Building'
            }
        }

        stage('Test') {
            steps {
                echo'testing'
            }
        }

        stage('Release') {
            steps {
                sh '''
                    docker push albadriyano/hello-world:1.0
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo'Deploy..'
            }
        }

        stage('Monitor') {
            steps {
                echo'Monitoring..'
            }
        }
    }

    post {
        success {
            echo'Success'
        }

        failure {
            echo'Failure'
        }
    }
}