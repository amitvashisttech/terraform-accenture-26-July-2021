variable "key_name" {
  default = "terraform-demo-av"
}

variable "pvt_key" {
  default = "/root/.ssh/terraform-demo-av.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-034e6b31a24f0d764"
}
