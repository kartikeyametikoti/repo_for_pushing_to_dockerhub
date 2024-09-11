pipeline {
    agent any

    environment {
        registry = 'kartikeya1112/my-python-app6'
        registryCredential = 'dockerhub_id'
        DOCKER_TAG = 'latest'
        DOCKER_IMAGE_NAME = "${registry}:${DOCKER_TAG}"
    }
    stages {
        stage('Getting Git Repo') {
            steps {
                git branch: 'main', credentialsId: 'mycredentials', url: 'https://github.com/kartikeyametikoti/java_project'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                   dockerImage = docker.build registry
                }
            }
        }
        stage('pushing to dockerhub')
        {
            steps{
                script{
                    docker.withRegistry('',registryCredential)
                    dockerImage.push()
            }
        }
    }
}
