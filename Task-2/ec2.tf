resource "aws_security_group" "ec2_sg" {
  name_prefix = "ec2-sg"
  vpc_id      = aws_vpc.this.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# Launch a CentOS EC2 instance in the VPC
resource "aws_instance" "ec2_instance" {
  ami           = "ami-07d3a50bd29811cd1" 
  instance_type = var.ec2_size
  key_name      = var.ec2_keypair
  subnet_id = aws_subnet.public.0.id
  iam_instance_profile = var.ec2_IAM_role

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum install -y curl
              echo 1 > /proc/sys/net/ipv4/ip_forward
              EOF

  tags = {
    Name = var.ec2_name
  }
}


