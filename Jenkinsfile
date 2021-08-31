pipeline {
  agent any
  stages {
    stage('Git Progress') {
      steps {
        git branch: 'main', credentialsId: 'Shin9184', url: 'https://github.com/Shin9184/spring'
      }
    }
  stage('Gradle Build & Image buil') {
      steps {
        sh 'chmod +x ./gradlew'
        sh './gradlew clean build'
        sh 'docker build -t tlqkddk123/spring .'
        }
    }
    stage ('Docker-hub login') {
        steps {
                docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                sh 'docker push eub456/test:lates'
                }
        }
    }
  }
}