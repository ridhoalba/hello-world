pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                docker build -t hello-world:1.0 .
                '''
            }
        }
        stage('Test') {
            steps {
            sh '''
            docker run -d -p 8080:80 hello-world:1.0
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
