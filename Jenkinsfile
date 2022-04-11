pipeline {
    agent any
 stages {
  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t pipeline-sosmed:latest .' 
                  sh 'docker tag pipeline-sosmed taufiq14s/pipeline-sosmed:latest'
                sh 'docker tag pipeline-sosmed taufiq14s/pipeline-sosmed:$BUILD_NUMBER'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {
          sh  'docker push taufiq14s/pipeline-sosmed:latest'
          sh  'docker push taufiq14s/pipeline-sosmed:$BUILD_NUMBER' 
        }
                  
          }
        }
     
      stage('Run Docker container on Jenkins Agent') {
             
            steps {
                sh "docker run -d -p 8081:80 taufiq14s/pipeline-sosmed"
 
            }
        }
 stage('Run Docker container on remote hosts') {
            //Replace with remote host 
     steps {
            sh "docker -H ssh://ubuntu@172.31.10.215 rm container sosmed-dev -f"     // Remove old container named sosmed-dev
            sh "docker -H ssh://ubuntu@172.31.10.215 run --name sosmed-dev -d -p 8081:80 taufiq14s/pipeline-sosmed" // Run new image
 
            }
        }
    }
}
