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
                sh 'mvn deloy'
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
