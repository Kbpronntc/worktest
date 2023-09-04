pipeline {
    agent {
        label any
    }
    stages {
        stage('git stage') {
	        steps {
	            git branch: 'main', credentialsId: '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', url: 'https://github.com/Kbpronntc/worktest.git'
			}
		}
	    stage('version') {
	        steps {
	            sh 'python3 --version'
	        }
	    }
        stage('Run Python Script') {
            steps {
                sh 'python3 script.py'
            }
        }
    }
}
