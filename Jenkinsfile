pipeline {
    agent any
    stages {
        stage('System') {
            steps {
                sh 'pwd'
                sh 'http --vesion'
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
                sh './gradlew bootRun'
                echo 'Deploying...'
            }
        }
    }
    triggers {
        pollSCM('* * * * *')
    }
}