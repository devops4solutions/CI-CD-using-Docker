pipeline {
    agent any
    parameters {
               string(name: REMOTEHOSTIP, defaultValue: '')
  }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'run-hello-world', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
             
          }
        }
  stage('Run Docker Container on Jenkins') {
           steps {
             
                sh 'docker run hello-world'             
          }
        }
 stage('Run Docker container on remote hosts') {
             
            steps {
                sh "docker -H ssh://jenkins@${REMOTEHOSTIP} run hello-world"
 
            }
        }
    }
}
