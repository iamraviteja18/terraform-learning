
resource "aws_security_group" "allow_ssh" {
  vcp_id = aws_vcp.main.id
  name = "allow_ssh"
  description = "this is a security group that allows ssh and all egress traffic"
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]    
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]    
  }
  tags {
    Name = "allow_ssh"
  }
}
