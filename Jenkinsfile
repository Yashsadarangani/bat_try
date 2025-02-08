pipeline {
   agent any
   parameters {
       string(name: 'USERNAME', defaultValue: 'guest', description: 'Enter your username')
       booleanParam(name: 'DEPLOY', defaultValue: false, description: 'Deploy after build?')
       choice(name: 'ENVIRONMENT', choices: ['dev', 'staging', 'prod'], description: 'Select environment')
   }
   stages {
       stage('Display Parameters') {
           steps {
               echo "Username: ${params.USERNAME}"
               echo "Deploy: ${params.DEPLOY}"
               echo "Environment: ${params.ENVIRONMENT}"
           }
       }
   }
}
