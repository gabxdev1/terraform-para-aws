output "cluster_name" {
  value       = module.eks_cluster.eks_cluster_name
  description = "EKS Cluster Name"
}

output "cluster_endpoint" {
  value       = module.eks_cluster.cluster_endpoint
  description = "EKS Cluster Endpoint"
}