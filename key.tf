provider "aws" {
  profile = "default"
  region = "us-east-1"
  shared_credentials_file = "/Users/satgaur/.aws/credentials"
}                                                                                                                         
resource "aws_key_pair" "terraform_ec2_key" {
  key_name = "packer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4VOgpa/x7sXrbHflqk4xJ79TOlos/B0ojIRnZNcZHf64HRZKC9Q3I7fIeCLF9+dej4okDUMwuZvRfWBmfAgLeFWMt1tbsaLdWOA2xJrXCq7Z0Y64aM/0dTpV8ClpvSsme+MZXCP/fZm7YTPu0Ayt3k83QwOouO4dHtMRPAfFXP/J1eM8oI0sMVCn2qnhBHBSbx5zwULiZqa35Bl8M4d4oQqiM/i5KfbJrUBMrLaTKG3fVoyG2Kmfdz53Qymh37qfyfScCUJpnu0JIjRVg5eJHqfq6NrRF4W0udxpM505qzs5xZjACY9xwf+itU07p65VNHbN+dzaSP+EOYgFZufxB satgaur@WKMIN0788785"
}