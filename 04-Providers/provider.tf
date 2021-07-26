# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  version = ">=3.7,<=3.11"
}


provider "aws" {
  region  = "us-west-1"
  version = ">=3.7,<=3.11"
  alias   = "amit"
}


resource "aws_instance" "frontend_east" {
  ami           = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
}



resource "aws_instance" "frontend_west" {
  count         = 1
  ami           = "ami-0ed05376b59b90e46"
  instance_type = "t2.micro"
  provider      = aws.amit
}
