pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh './gradlew build'
        archiveArtifacts(artifacts: '**/build/libs/*.jar', fingerprint: true)
      }
    }

<<<<<<< HEAD
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
=======
    stage('Deploy') {
      steps {
        sh 'ls build/libs/*.jar'
        echo 'Deploying... mother fucker'
      }
>>>>>>> 1e695cde8624e21aac630d7bf931342646bea0b9
    }

  }
  triggers {
    pollSCM('* * * * *')
  }
}