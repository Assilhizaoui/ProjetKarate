pipeline {
    agent any
    stages {
       stage ('Git') {
           steps {
                git 'https://github.com/Assilhizaoui/ProjetKarate.git'
           }
       }
       

        stage ('Install') {
            steps {
                bat 'mvn test'
                
            }
           
        }

   
    stage('Test') {
      steps {
        bat 'mvn test'
      }
    }

         
}

}
