terraform { 
  backend "s3" { 
   bucket = "terraform-demo-av-28july2021"
   key = "terraform00/terraform.tfstate"
   region = "us-east-1"
 }
}
