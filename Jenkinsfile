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
                    SRC_DIR="/home/SRC_DIR"
                    DST_DIR="/home/"

                    if [ ! -d "$SRC_DIR" ]; then
                    echo "Error: Source directory does not exist!"
                    exit 1
                    fi

                    if [ ! -d "$DST_DIR" ]; then
                        mkdir -p "$DST_DIR"
                    fi
                    
                    for file in "$SRC_DIR"/*; do
                        cp "$file" "$DST_DIR"
                    done
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
