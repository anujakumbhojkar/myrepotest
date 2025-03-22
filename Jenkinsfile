pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-repo.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean package' // Replace with your build command
            }
        }
        
        stage('Test') {
            steps {
                sh 'mvn test' // Replace with your test command
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'scp target/*.jar user@server:/deploy-path/' // Replace with your deployment steps
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
