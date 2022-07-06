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
                sh 'chmod +x ./dockercheck.sh'
                sh './dockercheck.sh'
            }
        }   
    }
}
 

