# Output block for printing the VPC IDs
output "vpc_id" {
  description = "Prints the IDs of the created VPCs from the networking module"
  value       = module.netwoking.vpc_id
}

# Output block for printing the IDs of public subnets within the VPC
output "pub_subnet_id" {
  description = "Prints the IDs of the public subnets within the VPC from the networking module"
  value       = module.netwoking.pub_subnet_id
}

# Output block for printing the IDs of private subnets within the VPC
output "pri_subnet_id" {
  description = "Prints the IDs of the private subnets within the VPC from the networking module"
  value       = module.netwoking.pri_subnet_id
}

# Output block for printing the IDs of public instances (bastion) from the security module
output "Instance_id_public" {
  description = "Prints the IDs of the public instances (bastion) from the security module"
  value       = module.Security.Instance_id_public
}

# Output block for printing the IDs of private instances from the security module
output "Instance_id_private" {
  description = "Prints the IDs of the private instances from the security module"
  value       = module.Security.Instance_id_private
}

# Output block for printing the public IP address of the bastion instance from the security module
output "IP_Public_Bastion" {
  description = "Public IP address of the bastion instance from the security module"
  value       = module.Security.Bastion_Public_IP
}