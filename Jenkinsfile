pipeline {
    agent any

	
    stages {
	stage('git stage') {
			steps {
				git branch: 'main', credentialsId: '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', url: 'https://github.com/Kbpronntc/worktest.git'
			}
		}    
	stage('run bush') {
			steps { 
		sh 'chmod +x ./bash.sh'
                sh './bash.sh'
	    } 
	}           
    }
}
