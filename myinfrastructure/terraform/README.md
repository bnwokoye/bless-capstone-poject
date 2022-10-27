# terraform files used to provision EC2 instances for bless-capstone-project

Usage:

  1.Edit the credentials.tf file and add the AWS credentials

  provider "aws" { 
    region = "us-east-1" 
    access_key = "" <== fill this 
    secret_key = "" <== fill this 
    # only needed for restricted accounts 
    token = "" <== optional, fill this only if you have a restricted account 
  } 

  2.Create SSH key if you don't have one

    ssh-keygen -t rsa -b 4096

  3.Initialize terraform

    terraform init

  4.Have terraform validate your configuration

    terraform validate

  5.Have terraform provision the AWS infrastructure

    terraform apply -auto-approve

...... once done with the project ....

  6.Have terraform delete the provisioned AWS resources

    terraform destroy -auto-approve

