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
        sh 'docker build -t tlqkddk123/spring .'
        }
    }
    stage ('Push image') {
        steps {
                checkout scm
                   'step1' docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                        def customImage = docker.build("eub456/test:${env.BUILD_ID}")
                            customImage.push()
                   }
        }
    }
  }
}