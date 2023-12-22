variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "Nginx"
}

variable "tenancy" {
    description = "Tenancy for the VPC instances"
    type        = string
    default     = "default"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_names" {
  description = "List of names for public subnets"
  type        = list(string)
  default     = ["Nginx-pub-sub-01", "Nginx-pub-sub-02"]
}

variable "pub_cidr" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.0.0/18", "10.0.64.0/18"]
}

variable "private_subnet_names" {
  description = "List of names for private subnets"
  type        = list(string)
  default     = ["Nginx-pvt-sub-01", "Nginx-pvt-sub-02"]
}

variable "pv_cidr" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.128.0/18", "10.0.192.0/18"]
}

variable "igw_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "Nginx-igw-01"
}

variable "nat_name" {
  description = "Name tag for the NAT Gateway"
  type        = string
  default     = "Nginx-nat-01"
}

variable "public_route_table_names" {
  description = "Name tag for public route tables"
  type        = string
  default     = "Nginx-route-pub-01"
}

variable "private_route_table_names" {
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