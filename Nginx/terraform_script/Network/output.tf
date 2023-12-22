# Output block for printing the ID of the created VPC
output "vpc_id" {
  description = "Prints the ID of the created VPC"
  value       = aws_vpc.test_vpc.id
}

# Output block for printing the IDs of public subnets within the VPC
output "pub_subnet_id" {
  description = "Prints the IDs of the public subnets within the VPC"
  value       = aws_subnet.public[*].id
}

# Output block for printing the IDs of private subnets within the VPC
output "pri_subnet_id" {
  description = "Prints the IDs of the private subnets within the VPC"
  value       = aws_subnet.private[*].id
}