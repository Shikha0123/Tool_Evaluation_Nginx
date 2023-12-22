# Output block for printing the IDs of public instances
output "Instance_id_public" {
  description = "Prints the IDs of the public instances (bastion)"
  value       = aws_instance.bastion[*].id
}

# Output block for printing the IDs of private instances
output "Instance_id_private" {
  description = "Prints the IDs of the private instances"
  value       = aws_instance.private-ec2[*].id
}

# Output block for printing the public IP of the bastion instance
output "Bastion_Public_IP" {
  description = "Public IP address of the bastion instance"
  value       = aws_instance.bastion.public_ip
}