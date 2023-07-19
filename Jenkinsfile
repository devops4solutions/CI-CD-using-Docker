pipeline {
    agent any
	
	  tools
    {
       maven "maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
             
          }
        }
	 stage('Execute Maven') {
           steps {
             
                sh 'mvn clean package'             
          }
        }
	
 }
	post {
  always {
    slackSend channel: 'dev', message: "please find the status of build started ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}"
  }
}
}
