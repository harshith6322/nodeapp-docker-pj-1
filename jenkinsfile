pipeline {
    agent { label 'node-js-label' } // Slave node
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Deploy with Docker Compose') {
            steps {
                script {
                    // Bring up the services defined in docker-compose.yml
                    sh 'docker-compose up -d'
                    // Wait for 30 seconds
                    echo 'Waiting for 30 seconds to verify the container is running...'
                    sleep(time: 30, unit: 'SECONDS')
                    // Verify containers are running
                    sh 'docker ps'
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
