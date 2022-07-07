pipeline {
    agent {
        label('DockerNode')
    }
    stages {
        stage ('Build') {
            steps {
                cleanWs()
                sh 'chmod +x ./scripts/dockercheck.sh'
                sh './scripts/dockercheck.sh'
            }
        }
    }
}
 

