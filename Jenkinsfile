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
				//script: "aws ec2 describe-images --region ap-south-1 --query 'reverse(sort_by(Images,&CreationDate))[:1].{ImageId:ImageId}' --output text",
				//returnStdout: true
			//).trim()
			//echo "ID : ${AMI_ID}"
			   
			sh (
				script: "aws ec2 create-launch-template --launch-template-name $params.TemplateName 
				--version-description $params.Version --launch-template-data ImageId='ami-055c00a757e3e4e4c'"
			)
			
                   } 
              } 
         }
          
     }
}
