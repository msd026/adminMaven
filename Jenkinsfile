node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   
   
  stage('Archiving'){
    archiveArtifacts artifacts: 'target/admin-0.0.1-SNAPSHOT.jar'
  }  
  
}
