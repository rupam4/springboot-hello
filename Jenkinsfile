pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t springboot-hello .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Stop any existing container with same name (optional)
                sh 'docker stop springboot-hello || true'
                sh 'docker rm springboot-hello || true'

                // Run container on port 8081
                sh 'docker run -d -p 8081:8080 --name springboot-hello springboot-hello'
            }
        }
    }
}
