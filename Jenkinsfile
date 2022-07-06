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
                sh './dockercheck.sh'
            }
        }   
    }
}
 

