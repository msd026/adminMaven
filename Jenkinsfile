node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   

  stage('run Maven'){
    sh label: '', script: '''
    export MAVEN_HOME=/opt/maven
    export PATH=$PATH:$MAVEN_HOME/bin
    mvn --version
    mvn clean package'''
  }

  stage('archiving'){
    archiveArtifacts artifacts: 'execution/node/3/ws/target/admin-0.0.1-SNAPSHOT.jar'
  }
  stage('upload'){
    s3Upload(file:'/job/LMS/12/execution/node/3/ws/dockerfile.txt', bucket:'jenkinsawscd', path:'./')
  }
}
