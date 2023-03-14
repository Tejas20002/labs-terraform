terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

provider "aws" {
  region = var.region
  access_key = var.aws_access
  secret_key = var.aws_secret
}

resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = "t2.micro"
   count = 2

   tags = {
     Name = element(var.tags,count.index)
   }
}


output "ec2-app-dev-1" {
    value = "${aws_instance.app-dev[0].id}"
}
output "ec2-app-dev-2" {
    value = "${aws_instance.app-dev[1].id}" 
}
output "timestamp" {
  value = local.time
}