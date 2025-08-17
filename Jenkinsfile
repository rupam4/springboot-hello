pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t springboot-hello .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker stop springboot-hello || exit 0'
                bat 'docker rm springboot-hello || exit 0'
                bat 'docker run -d -p 8081:8080 --name springboot-hello springboot-hello'
            }
        }
    }
}
