variable "main_code_s3" {
  description = "value"
  type = string
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
}

variable "vpc_cidr_block" {
  description = "value"
  type        = string
}
variable "public_subnets" {
  description = "value"
  type        = map(object({
    cidr_block = string
    az         = string
    name       = string
  }))
}
variable "private_subnets" {
  description = "private subnets"
  type        = map(object({
    cidr_block = string
    az         = string
    name       = string 
  }))
}
variable "internet_route_cidr" {
  description = "value"
  type        = string
}

variable "project_name" {
    description = "The name of the project."
    type        = string
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}


