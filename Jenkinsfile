pipeline {
    agent {
        label('DockerNode')
    }
    environment {
        ContainerID = ""
    }
    stages {
        stage ('Build Nginx') {
            sh './dockercheck.sh'
        }   
    }
}
 

