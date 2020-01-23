pipeline {
    agent any
    stages {
        stage('System') {
            steps {
                sh 'pwd'
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