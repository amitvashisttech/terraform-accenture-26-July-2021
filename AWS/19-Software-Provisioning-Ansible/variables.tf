data "aws_ami" "myami" {
  most_recent = true
  owners  = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

locals { 
  default_name = "${join("-", list(terraform.workspace, "example"))}"
}


variable "region" {
  default = "us-east-1"
}


variable "instance_type" { 
  type = map
  default = { 
      default = "t2.nano"
      dev     = "t2.micro"
      prod    = "t2.large"
      mindtree = "x1.large"
  }

}



variable "instance_count" { 
  type = map
  default = { 
      default = "1"
      dev     = "1"
      prod    = "1"
      mindtree = "1"
  }

}

variable "key_name" { 
  default = "terraform-mindtree-keypair"
}


variable "pvt_key" { 
  #default = "/root/.ssh/amitvashist-terraform.pem"
  default = "/root/terraform-accenture-26-July-2021/AWS/19-Software-Provisioning-Ansible/.terraform/.ssh/admin_rsa"
}

variable "sg_id" { 
  default = "sg-034e6b31a24f0d764"
}
