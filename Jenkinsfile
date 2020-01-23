pipeline {
  agent any
    stages {
      stage('System') {
        steps {
          sh 'pwd'
          sh 'java --version'
          sh 'http --version'
        }
      }
      stage('Build') {
        steps {
        sh './gradlew build'
        archiveArtifacts(artifacts: '**/build/libs/*.jar', fingerprint: true)
      }
    }

    stage('Deploy') {
      steps {
        sh './gradlew bootRun'
        sh 'ls build/libs/*.jar'
        echo 'Deploying...'
      }
    }

  }
  triggers {
    pollSCM('* * * * *')
  }
}