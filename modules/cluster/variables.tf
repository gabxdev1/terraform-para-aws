variable "project_name" {
  type        = string
  nullable    = false
  description = "Project name to be used in resource names and tags."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
}

variable "public_subnet_sa-east-1a" {
  type        = string
  nullable    = false
  description = "The ID of the public subnet in sa-east-1a region."
}

variable "public_subnet_sa-east-1b" {
  type        = string
  nullable    = false
  description = "The ID of the public subnet in sa-east-1b region."
}

