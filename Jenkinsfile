pipeline {
    agent any
    tools {
        maven "Maven 3.8.3"
    }

    stages {
        stage('Fetch Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/tbhuiyan69/ABC-Technologies.git'
            }
        }
        
        stage('Build') {
            steps {
                sh "mvn clean package -DskipTests=true"
                archiveArtifacts 'target/*.jar'
            }
        }
        
        stage('Test') {
            steps {
                // Add steps to run tests here
                echo 'Running tests...'
            }
        }

        stage('Deploy') {
            steps {
                // Add steps to deploy your project here
                echo 'Deploying the project...'
            }
        }
    }
}


