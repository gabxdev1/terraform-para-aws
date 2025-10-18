variable "cidr_block" {
  type        = string
  nullable    = false
  description = "Networking CIDR block to be used for the VPC."
}

variable "project_name" {
  type        = string
  nullable    = false
  description = "Project name to be used in resource names and tags."
}

