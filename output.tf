output "cluster_name" {
  value       = module.eks_cluster.eks_cluster_name
  description = "EKS Cluster Name"
}

output "cluster_endpoint" {
  value       = module.eks_cluster.cluster_endpoint
  description = "EKS Cluster Endpoint"
}

output "cluster_ca_certificate" {
  value       = module.eks_cluster.cluster_ca_certificate
  description = "EKS Cluster CA Certificate"
}
