pipeline {
    agent any

    stages {
        stage ('Compile Stage') {
	    when {
              branch 'master'
            }
            steps {
                sh '''
                      echo "Hello master branch"
                   '''    
            }
        }
        stage ('Testing Stage') {
             when {
                branch 'develop'
            }

            steps {
                sh '''
                      echo "Hello develop branch"
                   '''    
            }
    }
}
	post{
		always{
                        sh '''export filename=$( echo $RANDOM )'''
                        sh """./status.sh \"${currentBuild.currentResult}\" \"${JOB_BASE_NAME}\" \"${filename}\" """
                        sh "echo $filename"
		}
                success{
                        sh "rm /var/lib/jenkins/workspace/$filename.html"
                }
	}
}
