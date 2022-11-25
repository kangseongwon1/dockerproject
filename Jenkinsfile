node {
     stage('Clone repository') {
         checkout scm
     }
     stage('Build image') {
         app = docker.build("github.com/kangseongwon1/dockerproject")
         
     }
     stage('Push image') {
         docker.withRegistry('https://github.com/kangseongwon1', 'repo-and-hook-access-token-credentials') {
             app.push("${env.BUILD_NUMBER}")
             app.push("latest")
         }
     }
}

stage('Build image') {
  app = docker.build("github.com/kangseongwon1/dockerproject")
}

stage('Push image') {
  docker.withRegistry('https://github.com/kangseongwon1', 'repo-and-hook-access-token-credentials') 
  {
     app.push("${env.BUILD_NUMBER}")
     app.push("latest")
  }
}
