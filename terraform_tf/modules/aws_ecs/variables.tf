variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "ecs_main" {
  description = "value"
  type = string
}

variable "ecs_cluster_name" {
  description = "value"
  type = string
}