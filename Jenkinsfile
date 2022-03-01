pipeline{

     agent any
     stages{
    
         stage('git checkout'){
             steps{
                  script{
                        git branch: 'main',
                        credentialsId: '091dbba5-fd40-4a53-857b-cc138869d8e3', 
                        url: 'git@github.com:Husain5253/packerRepo.git'
                  }
            }
         }
      
         stage('Packer'){
             steps{
                 script{
                       sh "packer build packer-image.json"
                 }
             }

        } 

     }
}
