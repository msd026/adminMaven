node{  
  stage('Checkoutgit'){
    git 'https://github.com/msd026/adminMaven' 
  }  
    
  stage('Run Maven'){
   // bat label: '', script: ''' 
    //export MAVEN_HOME=/opt/maven 
   // export PATH=$PATH:$MAVEN_HOME/bin
   // mvn --version
   // mvn clean package''' 
    bat'mvn clean package sonar:sonar'
  }

  stage('Archiving'){
    archiveArtifacts artifacts: 'target/admin-0.0.1-SNAPSHOT.jar'
  }  
  
  //stage('download playbook'){
   // s3Download bucket: 'jenkinsawscd', file: 'playboy.yaml', force: true, path: 'ansible/'
  //}
  
  //stage('download inventory'){
   // s3Download bucket: 'jenkinsawscd', file: 'hosts', force: true, path: 'ansible/'
   // s3Download bucket: 'jenkinsawscd', file: 'ansible.cfg', force: true, path: 'ansible/'    
  //}
 
  //stage ('ansible'){
  //  ansiblePlaybook installation: 'ansible-2.2.1.0', inventory: '/hosts/ansible/hosts', playbook: '/hosts/ansible/playboy.yaml'
  //}
  
  //stage('Run Cloud Formation'){
  //  sh label: '', script: 'ansible-playbook /hosts/ansible/playboy.yaml'
  //}

}
