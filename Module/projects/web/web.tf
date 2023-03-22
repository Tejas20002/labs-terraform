module "sgmodule" {
  source = "../../modules/"
}

resource "aws_instance" "myec2" {
   ami = "ami-0df24e148fdb9f1d8"
   instance_type = "t2.micro"
   vpc_security_group_ids = [module.sgmodule.sg_id]

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}

output "sg_id_output" {
  value = module.sgmodule.sg_id
}