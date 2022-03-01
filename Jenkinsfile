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
         stage('Creating Packer Image'){
             steps{
                 script{
                       sh "packer build packer-image.json"
                 }
             }

        } 
         stage('Creating Instance using Packer Image'){
              steps{
                   script{
                        aws ec2 run-instances --image-id "{{ ImageId }}" --count 1 --instance-type t2.micro 
                   } 
              }
         }
          
          

     }
}
