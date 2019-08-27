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
    archiveArtifacts artifacts: 'target/admin-0.0.1-SNAPSHOT.jar'
  }
  stage('upload'){
    s3Upload consoleLogLevel: 'INFO', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'jenkinsawscd', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-gov-east-1', showDirectlyInBrowser: false, sourceFile: 'artifact/target/admin-0.0.1-SNAPSHOT.jar', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'jenkins', userMetadata: []  }
}
