output "subnet_pub_sa-east-1a_id" {
  description = "Public Subnet A ID"
  value       = module.eks_network.subnet_pub_sa-east-1a_id
}

output "subnet_pub_sa-east-1b_id" {
  description = "Public Subnet B ID"
  value       = module.eks_network.subnet_pub_sa-east-1b_id
}

output "subnet_priv_sa-east-1a_id" {
  description = "Private Subnet A ID"
  value       = module.eks_network.subnet_priv_sa-east-1a_id
}

output "subnet_priv_sa-east-1b_id" {
  description = "Private Subnet B ID"
  value       = module.eks_network.subnet_priv_sa-east-1b_id
}

output "vpc_config_eks_cluster" {
  value       = module.eks_cluster.eks_vpc_config
  description = "EKS Cluster VPC Configuration"
}

output "eks_cluster_oidc" {
  description = "EKS Cluster OIDC TLS Certificate"
  value       = module.eks_cluster.eks_oidc_tls_cert
}
