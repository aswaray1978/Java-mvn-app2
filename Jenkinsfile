pipeline {
    agent { label 'slave1' }

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "maven 3.6.3"
    }

    stages {
        stage('SCM Checkout') {
            steps {
                echo 'Perform SCM Checkout'
		git 'https://github.com/aswaray1978/Java-mvn-app2.git'
            }
        }
        stage('Application_Build') {
            steps {
                echo 'Perform Maven Build'
                sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
	stage('Build Docker Image') {
            steps {
	       sh 'docker version'
	       sh "docker build -t bostondataengineer/bde-eta-app:${BUILD_NUMBER} ."
	       sh 'docker image list'
	       sh "docker tag bostondataengineer/bde-eta-app:${BUILD_NUMBER} bostondataengineer/bde-eta-app:latest"
            }
        }
    }
}
