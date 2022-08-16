pipeline {
    agent any
    stages {
        stage('build') {
            steps {
            withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'kiran-aws-creds', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                dir("${env.WORKSPACE}/ec2-structure/"){
                sh 'terraform fmt'
                sh 'terraform init -no-color'
                sh 'terraform plan -no-color'
                sh 'terraform apply --auto-approve -no-color'
                }
            }
            }
        }
       ''' stage("apply"){
           steps{
            script {
              input message: "Run Pipeline in following ", ok: "Run"
              sh 'terraform apply --auto-approve -no-color'  
            }
           } 
        }'''
        }
}


