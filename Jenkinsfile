pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/anujakumbhojkar/myrepotest.git'

            }
        }
        
        stage('Build') {
            steps {
                sh 'building' // Replace with your build command
            }
        }
        
        stage('Test') {
            steps {
                sh 'testing'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'deployed'
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
