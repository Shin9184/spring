pipeline {
  agent any
  stages {
    stage('Git Progress') {
      steps {
        git branch: 'main', credentialsId: 'Shin9184', url: 'https://github.com/Shin9184/spring.git'
      }
    }
  stage('Gradle Build & Image buil') {
      steps {
        sh 'chmod +x ./gradlew'
        sh './gradlew clean build'
        }
    }
    stage ('Push image') {
        steps {
                checkout scm
                   'step1' docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                        def customImage = docker.build("tlqkddk123/spring:${env.BUILD_ID}")
                            customImage.push()
                   }
        }
    }
  }
}