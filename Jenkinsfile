pipeline {
  agent any
  stages {
    stage('System') {
      parallel {
        stage('System') {
          steps {
            sh 'pwd'
          }
        }

        stage('parallel') {
          steps {
            sh '''pwd;
ls -la
echo $HOME'''
            sh '''cat README.md;
'''
          }
        }

        stage('Parallel2') {
          steps {
            sh 'echo $HOME;'
            sh 'docker --version;'
          }
        }

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
        sh 'ls build/libs/*.jar'
        sh './gradlew test'
        echo 'Deploying...'
      }
    }

  }
  triggers {
    pollSCM('* * * * *')
  }
}