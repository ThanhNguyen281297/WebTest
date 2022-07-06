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
    }
}
 

