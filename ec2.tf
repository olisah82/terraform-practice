resource "aws_instance" "project-iac" {
  ami = lookup(var.awsproject, "ami")
  instance_type = lookup(var.awsproject, "itype")
  count = 4 # create four similar EC2 instances
  subnet_id = lookup(var.awsproject, "subnet") #FFXsubnet2
  associate_public_ip_address = lookup(var.awsproject, "publicip")
  key_name = lookup(var.awsproject, "keyname")



  tags = {
    Name ="SERVER01"
    Environment = "DEV"
    OS = "UBUNTU"
    Managed = "IAC"
  }

}


# output "ec2instance" {
#   value = aws_instance.project-iac[count.index]
# }