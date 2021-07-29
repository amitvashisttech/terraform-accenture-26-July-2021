module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-0947d2ba12ee1ff75"
  instance_type          = "t2.micro"
  key_name               = "terraform-login-demo-key-Jk"
  monitoring             = true
  vpc_security_group_ids = ["sg-034e6b31a24f0d764"]
  subnet_id              = "subnet-0f3271ea7fdb15b82"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
