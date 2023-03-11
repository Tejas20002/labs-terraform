provider "aws" {
  region = "us-west-2"
  access_key = "AKIASZVLKO5ZIPSI2FJ7"
  secret_key = "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"
}

resource "aws_instance" "terraform-create" {
  ami = "ami-0df24e148fdb9f1d8"
  instance_type = "t2.micro"
}