output "eks_vpc_config" {
  value = aws_eks_cluster.eks_cluster.vpc_config
}

output "eks_oidc_tls_cert" {
  value = data.tls_certificate.eks_oidc_tls_cert.certificates[*].sha1_fingerprint
}
