pipline {
	agent any
	
	stages {
		stage('Git Stage') {
			steps {
				git branch: 'main', credentialsId: '6d3fe74d-3911-4f1e-ac00-67d4dce755f9', url: 'https://github.com/Kbpronntc/worktest.git'
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
