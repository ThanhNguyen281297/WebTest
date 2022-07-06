pipeline {
    agent {
        label('DockerNode')
    }
    environment {
        ContainerID = ""
    }
    stages {
        stage ('Build Nginx') {
            steps {
                sh 'chmod +x ./scripts/dockercheck.sh'
                sh './scripts/dockercheck.sh'
            }
        }   
    }
}
 

