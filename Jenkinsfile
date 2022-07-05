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
                sh 'docker pull nginx'
                script {
                    ContainerID =  sh( returnStdout: true, script: 'docker run -it -d -p 8081:80 nginx:latest').trim()
                }
                sh 'docker ps -a'
                sh "docker exec ${ContainerID} /bin/bash -c 'ls -l'"
            }
        }
        stage ('Clone Code') {
            echo 'pwd $WORKSPACE'
        }
    }
}