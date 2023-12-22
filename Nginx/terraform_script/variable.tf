variable "vpcname" {
  description = "Name tag for the VPC"
  type        = string   
  default     = "Nginx"
}

variable "vpctenancy" {
  description = "Tenancy for the VPC instances"
  type        = string
  default     = "default"
}

variable "vpccidr" {
  description = "CIDR block for the VPC"
  type        = string  
  default     = "10.0.0.0/16"
}

variable "pub_sub_names" {
  description = "List of names for public subnets"
  type        = list(string)  
  default     = ["Nginx-pub-sub-01", "Nginx-pub-sub-02"]
}

variable "pubcidr" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)    
  default     = ["10.0.0.0/18", "10.0.64.0/18"]
}

variable "pvt_sub_names" {
  description = "List of names for private subnets"
  type        = list(string)    
  default     = ["Nginx-pvt-sub-01", "Nginx-pvt-sub-02"]
}

variable "pvtcidr" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)    
  default     = ["10.0.128.0/18", "10.0.192.0/18"]
}

variable "pub_instance_name" {
  description = "Name tag for the bastion instance"
  type        = string 
  default     = "bastion-instance"
}

variable "pvt_instance_name" {
  description = "List of names for private instances"
  type        = list(string)  
  default     = ["Nginx-Master","Nginx-Slave"]  
}

variable "igwname" {
  description = "Name tag for the Internet Gateway"
  type        = string   
  default     = "Nginx-igw-01"
}

variable "natname" {
  description = "Name tag for the NAT Gateway"
  type        = string   
  default     = "Nginx-nat-01"
}

variable "public_rt_names" {
  description = "Name tag for public route tables"
  type        = string   
  default     = "Nginx-route-pub-01"
}

variable "private_rt_names" {
  description = "Name tag for private route tables"
  type        = string   
  default     = "Nginx-route-pvt-01"
}

variable "enable_dns_support" {
  description = "Enable DNS support for the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
  type        = bool
  default     = true
}

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "default_route_cidr_block" {
  description = "CIDR block for the default route (0.0.0.0/0)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "local_gateway_id" {
  description = "ID of the local gateway for the local route"
  type        = string
  default     = "local"
}

variable "vpc_peering_cidr_block" {
  description = "CIDR block for the VPC peering route"
  type        = string
  default     = "172.31.0.0/16"
}

variable "peering_vpc_id" {
  description = "ID of the peering VPC"
  type        = string
  default     = "vpc-093f1f4ca60f739df"
}

variable "auto_accept_peering" {
  description = "Automatically accept the VPC peering connection"
  type        = bool
  default     = true
}

variable "vpc_peering_name" {
  description = "Name for the VPC peering connection"
  type        = string
  default     = "VPC-Peering"
}

variable "route_table_id" {
  description = "ID of the route table"
  type        = string
  default     = "rtb-022f664fa430f5c32"
}

variable "instancetype" {
  description = "Instance type for both bastion and private instances"
  type        = string   
  default     = "t2.micro"
}

variable "seqgrp" {
  description = "Sequence group for naming instances"
  type        = string   
  default     = "Nginx"
}

variable "keyname" {
  description = "SSH key pair name for instances"
  type        = string
  default     = "nginx.pem"
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

variable "private_instance_name_02" {
  description = "Name tag for an additional private instance"
  type        = string   
  default     = "Nginx"
}