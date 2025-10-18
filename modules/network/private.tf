resource "aws_subnet" "eks_subnet_priv_sa-east-1a" {
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.region}a"
  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-priv-sa-east-1a",
      "kubernetes.io/role/internal-elb" = "1"
    }
  )
}

resource "aws_subnet" "eks_subnet_priv_sa-east-1b" {
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.region}b"
  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}-subnet-priv-sa-east-1b",
      "kubernetes.io/role/internal-elb" = "1"
    }
  )
}
resource "aws_route_table_association" "eks_rt_priv_assoc_sa-east-1a" {
  subnet_id      = aws_subnet.eks_subnet_priv_sa-east-1a.id
  route_table_id = aws_route_table.eks_priv_rt-sa-east-1a.id
}

resource "aws_route_table_association" "eks_rt_priv_assoc_sa-east-1b" {
  subnet_id      = aws_subnet.eks_subnet_priv_sa-east-1b.id
  route_table_id = aws_route_table.eks_priv_rt-sa-east-1b.id
}
