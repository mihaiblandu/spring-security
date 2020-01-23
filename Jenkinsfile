#!/usr/bin/env groovy
pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
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
                sh 'ls build/libs/*.jar'
                echo 'Deploying...'
            }
        }
    }
}