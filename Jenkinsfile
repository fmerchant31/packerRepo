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
         stage('Creating AWS Launch Template using Packer Image'){
              steps{
                   script{

                	//sh '''AMI_ID=$(aws ec2 describe-images --region ap-south-1 --query 'reverse(sort_by(Images,&CreationDate))[:1].{ImageId:ImageId}' --output text)'''
			
			//AMI_ID = sh ( 
				script: "aws ec2 describe-images --region ap-south-1 --query 'reverse(sort_by(Images,&CreationDate))[:1].{ImageId:ImageId}' --output text"
				) 
			   
			//sh (
				script: "aws ec2 create-launch-template --launch-template-name LaunchTemplate1 --version-description V1.0.0 --launch-template-data ImageId=${AMI_ID}"
				)
			abc = sh (
				script: "aws ec2 describe-launch-templates --query 'reverse(sort_by(LaunchTemplates,&CreateTime))[:1].LaunchTemplateId' --output text"
			)
                   } 
              } 
         }
          
     }
}
