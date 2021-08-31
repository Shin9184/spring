node {
    stage('Clone Repository'){
        checkout scm
    }

    stage('Build Image'){
        app = docker.build("tlqkddk123/spring")
    }

    stage('Test image'){ 
        app.inside { 
            sh 'echo "Tests passed"' 
        } 
    }

    stage('Push Image'){
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}