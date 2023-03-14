variable "aws_access" {}
variable "aws_secret" {}
variable "region" {
  default = "us-west-2"
}

variable "tags" {
  type = list
  default = ["First-ec2","Second-ec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}