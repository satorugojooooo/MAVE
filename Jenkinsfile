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

    }
}
