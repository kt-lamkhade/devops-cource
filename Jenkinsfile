pipeline {
    agent any
    stages {
        stage('build') {
            steps {
            withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'kiran-aws-creds', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh 'terraform fmt'
                sh 'terraform init'
                sh 'terraform apply  --auto-approve'
        }
            }
        }
    }
}