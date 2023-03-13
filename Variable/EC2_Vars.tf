terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  access_key = var.aws_access
  secret_key = var.aws_secret
}

resource "aws_instance" "firstEC2" {
  ami = "ami-0df24e148fdb9f1d8"
  instance_type = "t2.micro"
}

output "ec2" {
    value = "${aws_instance.firstEC2.id}"
}
