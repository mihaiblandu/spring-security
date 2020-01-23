pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './gradlew build'
        archiveArtifacts(artifacts: '**/build/libs/*.jar', fingerprint: true)
      }
    }

    stages {
        stage('Build') {
            steps {
                sh './gradlew build'
                archiveArtifacts artifacts: '**/build/libs/*.jar', fingerprint: true
            }
        }
        stage('Deploy') {
            steps {
                sh './gradlew bootRun'
                sh 'ls build/libs/*.jar'
                echo 'Deploying...'
            }
        }
    stage('Deploy') {
      steps {
        sh 'ls build/libs/*.jar'
        echo 'Deploying... mother fucker'
      }
    }

  }
  triggers {
    pollSCM('* * * * *')
  }
}