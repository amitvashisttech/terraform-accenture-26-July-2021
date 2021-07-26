# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "web" {
  ami           = "ami-0233c2d874b811deb"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
