pipeline {
    agent { label 'node-js-label' } // Slave node
<<<<<<< HEAD:jenkinsfile
=======
    environment {
        DOCKER_REGISTRY = 'nodejsapp-testing' // Replace with your Docker registry URL
        IMAGE_NAME = 'node-app'
    }
>>>>>>> 6a64d77ec2dd461bd4b248ed407c934bb351be21:Jenkinsfile
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Deploy with Docker Compose') {
            steps {
                script {
<<<<<<< HEAD:jenkinsfile
                    // Bring up the services defined in docker-compose.yml
                    sh 'docker-compose up -d'
                    // Wait for 30 seconds
                    echo 'Waiting for 30 seconds to verify the container is running...'
                    sleep(time: 30, unit: 'SECONDS')
                    // Verify containers are running
                    sh 'docker ps'
=======
                    sh 'docker build -t $DOCKER_REGISTRY/$IMAGE_NAME:latest .'
                }
            }
        }
       
        stage('Run App') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 $DOCKER_REGISTRY/$IMAGE_NAME:latest'
>>>>>>> 6a64d77ec2dd461bd4b248ed407c934bb351be21:Jenkinsfile
                }
            }
        }
    }
    post {
        always {
            script {
                // Tear down the services after the pipeline finishes
                echo 'Tearing down Docker Compose services...'
                sh 'docker-compose down'
            }
        }
        success {
            echo 'Pipeline completed successfully with Docker Compose!'
        }
        failure {
            echo 'Pipeline failed. Cleaning up Docker resources.'
        }
    }
}
