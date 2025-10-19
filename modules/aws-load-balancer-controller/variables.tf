variable "project_name" {
  type        = string
  nullable    = false
  description = "Project name to be used in resource names and tags."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
}

variable "oidc_issuer" {
  type        = string
  description = "The OIDC issuer URL for the EKS cluster."
  nullable    = false
}
