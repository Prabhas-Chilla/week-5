pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Prabhas-Chilla/week-5'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t prabhaschilla18/chilla:latest .'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    sh 'docker push prabhaschilla18/chilla:latest'
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh 'kubectl apply -f deployment.yaml'
                }
            }
        }
    }
}
