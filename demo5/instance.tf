resource "aws_instance" "example18"{
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  
  # this is for VPC subnet
  subnet_id = aws_subnet.main-public-1.id
  
  # this is for security group
  vpc_security_groups_ids = [aws_security_group.allow-ssh.id]
  
  # this is for public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}
