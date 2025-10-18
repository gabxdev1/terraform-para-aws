resource "aws_subnet" "eks_subnet_public_sa-east-1a" {
  vpc_id                  = aws_vpc.eks-vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.region}a"
  map_public_ip_on_launch = true
  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-subnet-public-sa-east-1a",
      "kubernetes.io/role/elb" = "1"
    }
  )
}

resource "aws_subnet" "eks_subnet_public_sa-east-1b" {
  vpc_id                  = aws_vpc.eks-vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.region}b"
  map_public_ip_on_launch = true
  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-subnet-public-sa-east-1b",
      "kubernetes.io/role/elb" = "1"
    }
  )
}

resource "aws_route_table_association" "eks_rtb_assoc_sa-east-1a" {
  subnet_id      = aws_subnet.eks_subnet_public_sa-east-1a.id
  route_table_id = aws_route_table.eks_public_rt.id
}

resource "aws_route_table_association" "eks_rtb_assoc_sa-east-1b" {
  subnet_id      = aws_subnet.eks_subnet_public_sa-east-1b.id
  route_table_id = aws_route_table.eks_public_rt.id
}
