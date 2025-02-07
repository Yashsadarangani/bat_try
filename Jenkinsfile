pipeline {
    agent any
 
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Yashsadarangani/bat_try.git'
                echo "Cloned..."
            }
        }
    }
}
