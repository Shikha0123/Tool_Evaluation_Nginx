variable "bastion_instance_name" {
  description = "Name tag for the bastion instance"
  type        = string
  default     = "bastion-instance"
}

variable "private_instance_name" {
  description = "List of names for private instances"
  type        = list(string)
  default     = ["Nginx-Master","Nginx-Slave"] 
}

variable "private_instance_name_02" {
  description = "Name tag for an additional private instance"
  type        = string
  default     = "Nginx"
}

variable "instance_type" {
  description = "Instance type for both bastion and private instances"
  type        = string
  default     = "t2.micro"
}

variable "seq_grp" {
  description = "Sequence group for naming instances"
  type        = string
  default     = "Nginx"  
}

variable "key_name" {
  description = "SSH key pair name for instances"
  type        = string
  default     = "nginx.pem"
}

variable "subnet_pub_id" {
  description = "ID of the public subnet for instances"
  type        = string
}

variable "subnet_pvt_id" {
  description = "List of IDs for private subnets for instances"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC for instances"
  type        = string
}

variable "inbound_ports" {
  description = "List of inbound ports and protocols"
  type        = list(map(any))
  default     = [
    { port = 80, protocol = "tcp" },
    { port = 22, protocol = "tcp" },
    { port = 443, protocol = "tcp" },
    { port = -1, protocol = "icmp" },
  ]
}

variable "outbound_ports" {
  description = "List of outbound ports and protocols"
  type        = list(map(any))
  default     = [
    { port = 0, protocol = "-1" },
  ]
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "volume_size" {
  description = "Root volume size for the instance"
  type        = number
  default     = 29
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks for inbound traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks for outbound traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "security_name" {
  description = "Name tag for the security group"
  type        = string
  default     = "sec_grp"
}

variable "Security_description" {
  description = "Description for the security group"
  type        = string
  default     = "Security group for EC2 instance"
}