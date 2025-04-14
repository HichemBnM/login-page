pipeline {
    agent any


    stages {
        stage('Clone Repo') {
            steps {
                echo "✅ Cloning Repo from GitHub"
                checkout scm // This checks out the code from your GitHub repo into the Jenkins workspace
            }
        }


        stage('Deploy to Server') {
            steps {
                echo "🚀 Deploying to Server"
                // SSH into the server or use SCP to copy files, deploy the code, and restart services

                sh '''
                cp -r * /mnt/deploy/
                '''
                // Replace with the appropriate deployment command for your stack
            }
        }
    }

    post {
        success {
            echo "✅ Pipeline Successful!"
        }
        failure {
            echo "❌ Pipeline Failed!"
        }
    }
}
// that work with only Jenkinsfile on github repo