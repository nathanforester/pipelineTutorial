pipeline {
    agent any
    parameters {
        booleanParam(name: 'Refresh',
                    defaultValue: false,
                    description: 'Read Jenkinsfile and exit.')
		    }
    stages {
        stage('run app') {
            steps {
               'ansible-playbook -v /var/lib/jenkins/workspace/basicAppDeploy/playbook.yaml' 
            }
        }

    }
}