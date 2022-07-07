pipeline {
    agent {
        label('DockerNode')
    }
    stages {
        stage ('Build') {
            steps {
                sh 'chmod +x ./scripts/dockercheck.sh'
                sh './scripts/dockercheck.sh'
            }
        }
        stage ('Config Nginx') {
            steps {
                sh 'sudo chown -R docker:docker  /var/lib/docker/volumes/nginx-config/_data/default.conf'
                sh "sed -i 's|/usr/share/nginx/html|/usr/share/nginx/html/Pipeline|g' /var/lib/docker/volumes/nginx-config/_data/default.conf"
            }
        }
    }
}
 

