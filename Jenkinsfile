node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   

  stage('run Maven'){
  script: 'mvn clean package'
  }

  stage('upload'){
    s3Upload(file:'/job/LMS/12/execution/node/3/ws/dockerfile', bucket:'jenkinsawscd', path:'./')
  }
}
