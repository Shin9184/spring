pipeline {
  agent any
  stages {
    stage('Git Progress') {
        git branch: 'main', credentialsId: 'Shin9184', url: 'https://github.com/Shin9184/spring.git'
    }

  stage('Gradle Build') {
        sh 'chmod +x ./gradlew'
        sh './gradlew clean build'
  }

  stage('Image Build') {
      app = docker.build("tlqkddk123/spring")
  }

  stage('Push Image') {
      docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
          app.push("${env.BUILD_NUMBER}")
          app.push("latest")
      }
  }
  }
}