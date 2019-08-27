node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   

  stage('run Maven'){
  script: 'mvn clean package'
  }

  stage('upload'){
    s3Upload(file:'*.jar', bucket:'jenkinsawscd', path:'*.jar')
  }
}
