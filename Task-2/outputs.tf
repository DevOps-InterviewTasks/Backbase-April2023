output "vpc_id_primary" {
    description = "The ID of the VPC"
    value       = aws_vpc.this.id
}

output "private_subnets_primary" {
    description = "List of IDs of private subnets"
    value       = [aws_subnet.private.*.id]
}
output "public_subnets_primary" {
    description = "List of IDs of public subnets"
    value       = [aws_subnet.public.*.id]
}
output "public_subnets_primary1" {
    description = "List of IDs of public subnet"
    value       = [aws_subnet.public[0].id]
}
output "region" {
    description = "list region output"
    value = var.region_primary   
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}