resource "aws_eks_node_group" "eks_managed_node_group" {
  cluster_name    = var.cluster_Name
  node_group_name = "${var.project_name}-mng"
  node_role_arn   = aws_iam_role.eks_mng_role.arn
  instance_types  = [var.instance_type]
  subnet_ids = [
    var.subnet-priv-sa-east-1a,
    var.subnet-priv-sa-east-1b
  ]

  scaling_config {
    desired_size = var.scaling_config.desired_size
    max_size     = var.scaling_config.max_size
    min_size     = var.scaling_config.min_size
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_mng_role_attachment_cni,
    aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr_pull,
    aws_iam_role_policy_attachment.eks_mng_role_attachment_ecr_read,
    aws_iam_role_policy_attachment.eks_mng_role_attachment_worker
  ]

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-mng"
    }
  )
}
