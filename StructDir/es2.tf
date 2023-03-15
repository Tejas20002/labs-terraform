resource "aws_instance" "firstEC2" {
  ami = "ami-0df24e148fdb9f1d8"
  instance_type = "t2.micro"
}

output "ec2" {
    value = "${aws_instance.firstEC2.id}"
}