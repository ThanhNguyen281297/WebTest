pipeline {
    agent {
        label('DockerNode')
    }
    environment {
        ContainerID = ""
    }
    stages {
        stage ('Clone repository') {
            steps {
                git https://github.com/ThanhNguyen281297/WebTest.git
                // sh 'docker pull nginx'
                // script {
                //     ContainerID =  sh( returnStdout: true, script: 'docker ps -a >> listContainer.txt')
                // }
                // script {
                //     ContainerID =  sh( returnStdout: true, script: 'awk "{print $1}" listContainer.txt').trim()
                //     if(ContainerID) {
                //         echo 'ContainerID is exists'
                //     }
                //     else {
                //         sh 'docker run -it -d -p 8081:80 nginx:latest >> listContainer.txt'
                //     }
                // }
                checkout scm
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