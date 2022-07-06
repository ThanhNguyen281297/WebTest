pipeline {
    agent {
        label('DockerNode')
    }
    stages {
        stage ('Build') {
            steps {
                sh 'chmod +x ./scripts/dockercheck.sh'
                sh './scripts/dockercheck.sh'
                sh 'ls -l'
            }
        }
        stage ('Copy source code') {
            steps {
                sh "docker cp -a $WORKSPACE/index.html ${ContainerID}:/usr/share/nginx/html/"
                sh "docker exec ${ContainerID} /bin/bash -c 'service nginx reload'"
        }  
    }
}
 

