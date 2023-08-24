pipline {
name: jenkins-CI
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - name: Trigger jenkins job
        uses: joshlk/jenkins-githubaction@main
        with:
          url: http://158.160.71.177:32000
          job_name: jenkins_run
          username: user
          password: !QAZxsw2
          timeout: "1000"
}
	agent any
	              
        - name: Jenkins-Action            
          uses: joshlk/jenkins-githubaction@V0.0.1
	
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
