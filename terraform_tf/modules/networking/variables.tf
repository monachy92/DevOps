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

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}