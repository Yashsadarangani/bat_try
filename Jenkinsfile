pipeline {
    agent { label 'agent1' }

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
