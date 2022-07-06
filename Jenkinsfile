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
                    // if(ContainerID) {
                    //     sh 'docker ps -a'

                    // }
                    // else {
                        sh 'docker run -it -d -p 8081:80 nginx:latest > containerID.txt'
                        ContainerID =  sh( returnStdout: true, script: "awk '{print $1;}' containerID.txt").trim()
                        echo ${ContainerID}
                    // }
                }
            }
        }
        // stage ('Copy source code') {
        //     steps {
        //         sh "docker cp -a $WORKSPACE/index.html ${ContainerID}:/usr/share/nginx/html/"
        //         sh "docker exec ${ContainerID} /bin/bash -c 'service nginx reload'"
        //     }
        // }
    }
}