pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                docker build -t hello-world:1.0 .
                docker container create --name hello-world -p 8090:80 hello-world:1.0
                '''
            }
        }
        stage('Test') {
            steps {
            sh '''
            docker start hello-world
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
