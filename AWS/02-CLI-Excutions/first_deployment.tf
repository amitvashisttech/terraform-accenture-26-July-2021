# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "web" {
  # Amazon Linux AMI ID 
  ami           = "ami-0233c2d874b811deb"

  # Ubuntu 16.04 AMI ID 
  #ami           = "ami-0d563aeddd4be7fff"
  instance_type = "t2.nano"

  tags = {
    Name = "HelloWorld-AmitVashist"
  }
}
