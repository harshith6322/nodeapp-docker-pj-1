pipeline {
    agent { label 'docker_node' } // Slave node
    environment {
        DOCKER_REGISTRY = 'nodejsapp-testing' // Replace with your Docker registry URL
        IMAGE_NAME = 'node-app'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_REGISTRY/$IMAGE_NAME:latest .'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    sh 'docker login $DOCKER_REGISTRY -u <username> -p <password>'
                    sh 'docker push $DOCKER_REGISTRY/$IMAGE_NAME:latest'
                }
            }
        }
        stage('Run App') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 $DOCKER_REGISTRY/$IMAGE_NAME:latest'
                }
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
