resource "aws_instance" "training-ec2" {
  ami = "ami-0b898040803850657"
  key_name = "packer"
  instance_type = "t2.micro"
           tags {
             Name = "training-ec2-instance"
           }
}