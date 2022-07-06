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
                    if(ContainerID) {
                        sh 'docker ps -a'
                    }
                    else {
                        ContainerID =  sh( returnStdout: true, script: 'docker run -it -d -p 8081:80 nginx:latest').trim()
                    }
                }
            }
        }
        stage ('Copy source code') {
            steps {
                sh "docker cp -a $WORKSPACE/index.html ${ContainerID}:/usr/share/nginx/html/"
                sh "docker exec ${ContainerID} /bin/bash -c 'service nginx reload'"
            }
        }
    }
}