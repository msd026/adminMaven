node{
  stage('Checkout'){
    git 'https://github.com/msd026/adminMaven'
  }   
    
  stage('Run Maven'){
    sh label: '', script: ''' 
    export MAVEN_HOME=/opt/maven
    export PATH=$PATH:$MAVEN_HOME/bin
    mvn --version
    mvn clean package'''
  }

  stage('Archiving'){
    archiveArtifacts artifacts: 'target/admin-0.0.1-SNAPSHOT.jar'
  }  
  
  stage('connect to jenkins'){
   ansiblePlaybook inventory: '/home/msd026/Downloads/ansible/platform/hosts', playbook: '/home/msd026/Downloads/ansible/platform/playboy.yaml'
  }
  
  stage('Upload'){
    s3Upload consoleLogLevel: 'INFO', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'jenkinsawscd/jenkinsfile', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: 'target/*.jar', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'jenkins', userMetadata: []  
  } 

}
