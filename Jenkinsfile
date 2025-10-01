pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'cicd-app'
        DOCKER_TAG = "${BUILD_NUMBER}"
        CONTAINER_NAME = 'cicd-container'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Install Dependencies') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'npm ci'
                    } else {
                        bat 'npm ci'
                    }
                }
            }
        }
        
        stage('Run Tests') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'npm test'
                    } else {
                        bat 'npm test'
                    }
                }
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    if (isUnix()) {
                        sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                        sh "docker tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest"
                    } else {
                        bat "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                        bat "docker tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest"
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    if (isUnix()) {
                        sh "docker stop ${CONTAINER_NAME} || true"
                        sh "docker rm ${CONTAINER_NAME} || true"
                        sh "docker run -d --name ${CONTAINER_NAME} -p 3000:3000 ${DOCKER_IMAGE}:latest"
                    } else {
                        bat "docker stop ${CONTAINER_NAME} || exit 0"
                        bat "docker rm ${CONTAINER_NAME} || exit 0"
                        bat "docker run -d --name ${CONTAINER_NAME} -p 3000:3000 ${DOCKER_IMAGE}:latest"
                    }
                }
            }
        }
    }
    
    post {
        always {
            echo 'Pipeline completed!'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}