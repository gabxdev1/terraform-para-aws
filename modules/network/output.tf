output "subnet_pub_sa-east-1a_id" {
  value = aws_subnet.eks_subnet_public_sa-east-1a.id
}

output "subnet_pub_sa-east-1b_id" {
  value = aws_subnet.eks_subnet_public_sa-east-1b.id
}

output "subnet_priv_sa-east-1a_id" {
  value = aws_subnet.eks_subnet_priv_sa-east-1a.id
}

output "subnet_priv_sa-east-1b_id" {
  value = aws_subnet.eks_subnet_priv_sa-east-1b.id
}
