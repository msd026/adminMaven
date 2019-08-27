node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   

  stage('run Maven'){
  sh label: '', script: 'mvn clean package'
  }

  stage('archiving'){
    archiveArtifacts artifacts: '.mvn/wrapper/*.jar'
  }
  stage('upload'){
    s3Upload(file:'/job/LMS/12/execution/node/3/ws/dockerfile.txt', bucket:'jenkinsawscd', path:'./')
  }
}
