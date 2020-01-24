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
            sh '''ls -la;
'''
            sh '''cat README.md;
cat LICENSE;
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
      parallel {
        stage('Deploy') {
          steps {
            sh 'ls build/libs/*.jar'
            sh './gradlew test'
            echo 'Deploying...'
          }
        }

        stage('Docker') {
          steps {
            sh '''ls -la;
docker build -t spring-boot-docker . ;'''
          }
        }

      }
    }

  }
  triggers {
    pollSCM('* * * * *')
  }
}