provider "aws" {
  region = "us-west-2"
  access_key = var.aws_access
  secret_key = var.aws_secret
}
resource "aws_instance" "myec2" {
   ami = "ami-0df24e148fdb9f1d8"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}