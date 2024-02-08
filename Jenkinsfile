pipeline {
    agent any

    triggers {
        pollSCM('* * * * *') // Poll SCM setiap menit
    }

    stages {
        stage('Build') {
            steps {
                // sh '''
                // docker build -t albadriyano/hello-world:1.0 .
                // docker container create --name hello-world-1 -p 8091:80 albadriyano/hello-world:1.0
                // '''
            }
        }
        stage('Test') {
            steps {
            // sh '''
            // docker start hello-world-1
            // '''
            // }
        }
        stage('Release') {
            steps {
                // sh '''
                //     docker tag hello-world:1.0 albadriyano/hello-world:1.0
                sh  ''' 
                docker push albadriyano/hello-world:1.0
                '''
            }
        }
        stage('Deploy'){
            steps {
                echo'deploy'
            }
        }
        stage('Monitor') {
            steps {
                echo'monitor'
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
