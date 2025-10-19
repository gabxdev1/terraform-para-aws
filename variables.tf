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

variable "instance_type" {
  type        = string
  nullable    = false
  description = "EC2 instance type for the EKS managed node group."
}

variable "profile" {
  type        = string
  default     = "default"
  description = "AWS CLI profile to be used for deploying resources."
}

variable "region" {
  type        = string
  nullable    = false
  description = "AWS region to deploy the resources in."
}

variable "scaling_config" {
  description = "Configuração de escalonamento do Node Group (desired, min, max)."
  type = object({
    desired_size = number
    min_size     = number
    max_size     = number
  })
  default = {
    desired_size = 1
    min_size     = 1
    max_size     = 1
  }
}

