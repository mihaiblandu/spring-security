pipeline {
  agent any
  stages {
    stage('System') {
      parallel {
        stage('System') {
          steps {
            sh 'pwd'
            sh 'curl --version'
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
            sh 'java -version'
            sh './gradlew -v'
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
            sh './gradlew test --info'
            echo 'Deploying...'
          }
        }

        stage('Docker') {
          steps {
            sh 'docker ps -a'
            sh 'docker build -t spring-boot-docker .'
            sh 'docker run -p  8083:8083 -p 8443:8443 --name spring-boot-docker -t -d spring-boot-docker'
          }
        }

      }
    }

    stage('Final Step') {
      steps {
        sh 'docker stop spring-boot-docker'
        sh 'docker rm spring-boot-docker'
      }
    }

  }
  triggers {
    pollSCM('* * * * *')
  }
}