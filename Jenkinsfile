pipeline {
    agent {
        label('DockerNode')
    }
    environment {
        ContainerID = ""
    }
    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/ThanhNguyen281297/WebTest.git'
            }
        }
        stage ('Build') {
            steps {
                sh 'chmod +x ./scripts/dockercheck.sh'
                sh './scripts/dockercheck.sh'
                sh 'ls -l'
            }
        }  
    }
}
 

