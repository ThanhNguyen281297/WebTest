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
                sh 'docker ps -a > listContainer.txt'
                script {
                    ContainerID =  sh( returnStdout: true, script: 'awk "{print $1}" listContainer.txt').trim()
                    if(ContainerID) {
                        echo '123213213'
                    }
                    // else {
                    //     sh 'docker run -it -d -p 8081:80 nginx:latest >> containerRun.txt'
                    //     
                    // }
                }
                // echo ${ContainerID}
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