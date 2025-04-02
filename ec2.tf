# key pair (login)
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
}

# VPC & Security Group
resource "aws_default_vpc" "default" {
  # default vpc
  # default vpc is created by AWS automatically
}

# security group
# security group is a virtual firewall that controls inbound and outbound traffic to AWS resources

resource "aws_security_group" "my_security_group" {
  name        = "automate-sg"
  description = "this will add a TF generated secturity group"
  #interpolation
  vpc_id = aws_default_vpc.default.id


  #inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH open"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP open"
  }

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Notes app"
  }

  # outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound traffic"
  }

  tags = {
    Name = "automate-sg"
  }

}

# ec2 instance
resource "aws_instance" "terra-ec2" {
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]
  instance_type   = var.ec2_instance_type
  #amazon machine image (ami)
  ami = var.ec2_ami_id # ubuntu 20.04
  user_data = file("install_nginx.sh") # install nginx on ec2 instance
  root_block_device {
    volume_size = var.ec2_root_storage_size    # in GB
    volume_type = "gp3" # General Purpose SSD
  }
  tags = {
    Name = "terraform-ec2-automate"
  }
}
