pipeline {
    agent {
        label('DockerNode')
    }
    stages {
        stage ('Build') {
            cleanWs()
            steps {
                sh 'chmod +x ./scripts/dockercheck.sh'
                sh './scripts/dockercheck.sh'
            }
        }
    }
}
 

