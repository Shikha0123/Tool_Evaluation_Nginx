locals {
  inbound_ports  = var.inbound_ports
  outbound_ports = var.outbound_ports
}
resource "aws_security_group" "sq_grp" {
  name        = var.security_name
  description = var.Security_description
  vpc_id = var.vpc_id

  dynamic "ingress" {
  for_each = local.inbound_ports
  content {
   from_port = ingress.value.port
   to_port = ingress.value.port
   protocol = ingress.value.protocol
   cidr_blocks = var.ingress_cidr_blocks
  }
 }
 dynamic "egress" {
  for_each = local.outbound_ports
  content {
   from_port = egress.value.port
   to_port = egress.value.port
   protocol = egress.value.protocol
   cidr_blocks = var.egress_cidr_blocks
  }
 }
  tags = {
    Name = var.seq_grp
  }
}

# Instances
resource "aws_instance" "bastion" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.key_pair.key_name  
  subnet_id = var.subnet_pub_id
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids = [aws_security_group.sq_grp.id]
  root_block_device {
    volume_size = var.volume_size
  }
  # user_data = <<-EOF
  #               #!/bin/bash
                # sudo apt update
                # sudo apt upgrade -y
                # sudo apt install software-properties-common
                # sudo add-apt-repository --yes --update ppa:ansible/ansible
                # sudo apt install -y ansible
                # sudo apt install python3-pip -y
                # pip install boto3
                # pip install botocore
  #               EOF
  tags = {
    Name = var.bastion_instance_name
  }
}


resource "aws_instance" "private-ec2" {
  count = length(var.private_instance_name)
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.key_pair.key_name
  subnet_id = var.subnet_pvt_id[count.index]
  vpc_security_group_ids = [aws_security_group.sq_grp.id]
  root_block_device {
    volume_size = var.volume_size
  }
  tags = {
    Name = var.private_instance_name[count.index]
    DB = var.private_instance_name_02
  }
}

# Genrate Key
resource "tls_private_key" "rsa_4096" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Genrate pen Key 
resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.rsa_4096.public_key_openssh
}

# pem Key download in sysytem
resource "local_file" "private_key" {
  content = tls_private_key.rsa_4096.private_key_pem
  filename = var.key_name
}