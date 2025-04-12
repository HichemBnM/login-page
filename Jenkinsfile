pipeline {
    agent any

    tools {
        maven 'M3' // matches the Maven name in Global Tools
    }

    stages {
        stage('Clone') {
            steps {
                git credentialsId: 'HichemBnM', url: 'https://github.com/HichemBnM/login-page'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed.'
        }
    }
}
