pipeline {
    agent any
parameters { 
	choice(name: 'branch', choices: ['jar', 'war', 'master'], description: '')
	string(name: 'maven', defaultValue: 'mvn install', description: 'maven build')
 }


    stages {
        stage('SCM') {
            steps {
                git branch: "${params.branch}", url: 'https://github.com/awskaizen02/Maven.git'
            }
        }
	stage('BUILD') {
            steps {
                bat "${params.maven}"
            }
        }
	stage('Deploy') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'webserver1', path: '', url: 'http://localhost:9091/')], contextPath: 'sunil-pipeline', war: '**/*.war'
            }
        }
    }
}
