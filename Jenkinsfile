pipeline {
    agent { label 'agent1' }

    tools {
        git 'Git-in-Docker'  // Use the Git tool configured in Jenkins
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Compiling Java Program') {
            steps {
                script {
                    sh '''
                    javac Main.java
                    java Main
                    '''
                }
            }
        }

        stage('Archive Build Artifact') {
            steps {
                archiveArtifacts artifacts: '*.class', fingerprint: true
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
