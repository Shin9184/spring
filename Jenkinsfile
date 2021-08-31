pipeline {
  agent any
  stages {
    stage('Git Progress') {
      steps {
        git branch: 'main', credentialsId: 'Shin9184', url: 'https://github.com/Shin9184/spring.git'
      }
    }

  stage('Gradle Build') {
      steps {
        sh 'chmod +x ./gradlew'
        sh './gradlew clean build'
        }
  }

  stage('Image Build') {
      steps {
          app = docker.build("tlqkddk123/spring")
      }
  }

  stage('Push Image') {
      steps {
          docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
          app.push("${env.BUILD_NUMBER}")
          app.push("latest")
          }
      }
  }
  }
}