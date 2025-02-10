pipeline {
    agent { label 'agent1' }
    tools {
        git '/usr/bin/git'
    }
    stages {
        stage('Compiling Java Program') {
            steps {
                script {
                    bat '''
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
