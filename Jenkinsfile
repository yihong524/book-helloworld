pipeline {
    agent {
        docker {
            image 'python:3.7.3'
        }
    }
    stages {
        stage('checkout src code') {
            steps {
                git "https://github.com/yihong524/book-helloworld"
            }
        }
        stage('testing') {
            steps {
                sh 'python -m unittest ./tests'
            }
        }
    }
    
}