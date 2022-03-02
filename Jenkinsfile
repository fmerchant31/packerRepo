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
         stage('Creating Template using Packer Image'){
              steps{
                   script{
                	sh "aws ec2 describe-images --region ap-south-1 --query 'reverse(sort_by(Images,&CreationDate))[:1].{ImageId:ImageId}' --output json > aws.json"
			sh "jq '.[]' aws.json > aws-output.json"
			sh "cat aws-output.json"
			sh "aws ec2 create-launch-template --launch-template-name LaunchTemplate1 --version-description V1.0.0 --launch-template-data file://aws-output.json"
                   } 
              }
         }
          
     }
}
