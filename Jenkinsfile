pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                script {
                    def dockerImageExists = sh(script: "docker image ls | grep hello-world", returnStatus: true)
                    if (dockerImageExists == 0) {
                        echo 'Image exists. Skipping build stage.'
                        currentBuild.result = 'SUCCESS'
                        error('Image already exists. Skipping build stage.')
                    } else {
                        sh '''
                        docker build -t hello-world:1.0 .
                        '''
                    }
                }
            }
        }
        stage('Test') {
            steps {
            sh '''
            docker run -d -p 90:80 hello-world:1.0
            '''
            }
        }
    }
    post {
        success {
            // Aksi yang akan dijalankan jika alur kerja berhasil
            echo 'Build and test successful!'
        }
        failure {
            // Aksi yang akan dijalankan jika alur kerja gagal
            echo 'Build or test failed!'
        }
    }
}
