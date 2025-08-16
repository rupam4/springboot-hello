pipeline {
  agent any

  environment {
    JAVA_HOME = 'C:\\Program Files\\Eclipse Adoptium\\jdk-17.0.14.7-hotspot'
    PATH = "${JAVA_HOME}\\bin;${env.PATH}"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        bat 'mvn clean package -DskipTests'
      }
    }

    stage('Test') {
      steps {
        bat 'mvn test'
      }
      post {
        always {
          junit 'target/surefire-reports/*.xml'
        }
      }
    }
  }
}
