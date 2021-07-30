# Create (and display) an SSH key
resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits = 4096
}


resource "local_file" "write_private_key" {
    content = tls_private_key.example_ssh.private_key_pem
    filename = "${path.root}/.terraform/.ssh/admin_rsa"
    file_permission = 0600
}


resource "local_file" "write_public_key" {
    content = tls_private_key.example_ssh.public_key_openssh
    filename = "${path.root}/.terraform/.ssh/admin_rsa.pub"
    file_permission = 0600
}


resource "random_string" "random" {
  length           = 2
  special          = false
  override_special = "/@£$"
}

resource "aws_key_pair" "loginkey" {
  key_name   = "terraform-login-demo-key-${random_string.random.id}"
  #public_key = file("${path.root}/.terraform/.ssh/admin_rsa.pub")
  public_key    = tls_private_key.example_ssh.public_key_openssh

}

