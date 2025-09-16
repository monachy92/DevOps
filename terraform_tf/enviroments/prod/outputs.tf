output "state_bucket_id" {
  description = "ID of the S3 state bucket"
  value       = aws_s3_bucket.state_bucket.id
}

output "state_bucket_arn" {
  description = "ARN of the S3 state bucket"
  value       = aws_s3_bucket.state_bucket.arn
}

# VPC Outputs (from networking module)
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = module.networking.vpc_cidr_block
}

# Subnet Outputs (from networking module)
output "public_subnet_ids" {
  description = "Map of public subnet IDs"
  value       = module.networking.public_subnet_ids # Renamed to plural
}

output "private_subnet_ids" {
  description = "Map of private subnet IDs"
  value       = module.networking.private_subnet_ids # Renamed to plural
}

# Gateway Outputs (from networking module)
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = module.networking.internet_gateway_id
}


# Route Table Outputs (from networking module)
output "public_route_table_id" {
  description = "ID of the public route table"
  value       = module.networking.public_route_table_id
}

output "private_route_table_id" {
  description = "ID of the private route table"
  value       = module.networking.private_route_table_id # Renamed to singular to match single resource output
}