pipeline {
    agent {
        docker { image 'php:alpine3.14' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'php --version'
            }
        }
    }
}
