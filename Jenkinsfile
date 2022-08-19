pipeline {
    agent any
	
	  tools
    {
       maven "Maven"
    }
 stages {
      stage('checkout') {
           steps {
             
                git branch: 'master', url: 'https://github.com/devops4solutions/CI-CD-using-Docker.git'
             
          }
        }
	 stage('Execute Maven') {
           steps {
             
                sh 'mvn package'             
          }
        }
        

  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t deacuandrei/proiect .' 
                sh 'docker tag proiect deacuandrei/proiect'
                //sh 'docker tag samplewebapp nikhilnidhi/samplewebapp:$BUILD_NUMBER'
               
          }
        }
     
 stage('Connect to Dockerhub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'Dockerhub', variable: 'Dockerhub')]) {
                        sh 'docker login -u deacuandrei -p ${Dockerhub}'
                    }
                    
                    sh 'docker push deacuandrei/proiect'
                }
            }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps 
			{
                sh "docker run -d -p 8003:8080 deacuandrei/proiect"
 
            }
        }
 stage('Run Docker container on remote hosts') {
             
            steps {
                sh "docker -H ssh://jenkins@172.31.28.25 run -d -p 8003:8080 deacuandrei/proiect"
 
            }
        }
    }
	}
    
