pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/your-username/login-page.git'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    chmod +x deploy.sh
                    ./deploy.sh
                '''
            }
        }
    }
}
