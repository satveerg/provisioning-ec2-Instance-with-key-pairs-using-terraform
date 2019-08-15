# EC2 Instance with Key Pair using Terraform

This project will be used to create an EC2 Instance using Terraform with AWS Key Pair.

run the command ssh-keygen -f terraform_ec2_key
this will create 2 files terraform_ec2_key and terraform_ec2_key.pub (Private and Public key)

## Getting Started
####create a key.tf file with below instructions

provider "aws" {
  profile = "default"
  region = "us-east-1"
  shared_credentials_file = "/Users/satgaur/.aws/credentials"
}                                                                                                                         
resource "aws_key_pair" "terraform_ec2_key" {
  key_name = "packer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4VOgpa/x7sXrbHflqk4xJ79TOlos/B0ojIRnZNcZHf64HRZKC9Q3I7fIeCLF9+dej4okDUMwuZvRfWBmfAgLeFWMt1tbsaLdWOA2xJrXCq7Z0Y64aM/0dTpV8ClpvSsme+MZXCP/fZm7YTPu0Ayt3k83QwOouO4dHtMRPAfFXP/J1eM8oI0sMVCn2qnhBHBSbx5zwULiZqa35Bl8M4d4oQqiM/i5KfbJrUBMrLaTKG3fVoyG2Kmfdz53Qymh37qfyfScCUJpnu0JIjRVg5eJHqfq6NrRF4W0udxpM505qzs5xZjACY9xwf+itU07p65VNHbN+dzaSP+EOYgFZufxB satgaur@WKMIN0788785"
}

####create ec2-instance.tf file with below instructions

resource "aws_instance" "training-ec2" {
  ami = "ami-0b898040803850657"
  key_name = "packer"
  instance_type = "t2.micro"
           tags {
             Name = "training-ec2-instance"
           }
}

### Creating the Instance by running below command

terraform apply

### now try to ssh the ec2 instance by using below command
ssh ec2-user@Public_IP -i terraform_ec2_key
