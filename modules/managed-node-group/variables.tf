variable "project_name" {
  type        = string
  nullable    = false
  description = "Project name to be used in resource names and tags."
}

variable "cluster_Name" {
  type        = string
  description = "The name of the EKS cluster to which the managed node group will be associated."
  nullable    = false
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
}

variable "subnet-priv-sa-east-1a" {
    type        = string
    description = "The ID of the private subnet in sa-east-1a for the managed node group."
  nullable    = false
}

variable "subnet-priv-sa-east-1b" {
  type        = string
  description = "The ID of the private subnet in sa-east-1b for the managed node group."
  nullable    = false
}
