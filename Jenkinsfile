node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   

  stage('run Maven'){
  script: 'mvn clean package'
  }

  stage('archiving'){
    archiveArtifacts artifacts: 'build/*.jar'
  }
  stage('upload'){
    s3Upload(file:'/job/LMS/12/execution/node/3/ws/dockerfile.txt', bucket:'jenkinsawscd', path:'./')
  }
}
