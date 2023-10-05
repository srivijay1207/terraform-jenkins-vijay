pipeline {
    agent { node { label 'agent1' } }
    options {
        ansiColor('xterm')
    }

    stages {
        stage('Init') {
            steps {
                sh'''
                    cd session-02
                    ls -ltr
                    pwd
                    terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    session-02
                    ls -ltr
                    pwd
                    terraform plan
                '''
            }
        }
        stage('Approve') {
            steps{
                input "Shall I apply?"
            }
        }

        stage('Apply') {
            steps{
                
                sh '''
                    session-02
                    ls -ltr
                    pwd
                    terraform apply -auto-approve
                '''
            }
        }
    }

    post { 
        always { 
            echo 'I will always run whether job is success or not'
        }
        success{
            echo 'I will run only when job is success'
        }
        failure{
            echo 'I will run when failure'
        }
    }
}