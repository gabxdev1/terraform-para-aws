resource "aws_eks_cluster" "eks_cluster" {
  name = "${var.project_name}-cluster"

  access_config {
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = "1.34"

  vpc_config {
    subnet_ids = [
      var.public_subnet_sa-east-1a,
      var.public_subnet_sa-east-1b
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_role_attachment
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-cluster"
    }
  )
}

# resource "aws_eks_access_entry" "developer_access" {
#   cluster_name  = aws_eks_cluster.eks_cluster.name
#   principal_arn = var.arn_developer_access_local
#   type          = "STANDARD"
# }
#
# resource "aws_eks_access_policy_association" "admin_policy" {
#   cluster_name  = aws_eks_cluster.eks_cluster.name
#   principal_arn = aws_eks_access_entry.developer_access.principal_arn
#   policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
#
#   access_scope {
#     type = "cluster"
#   }
# }
