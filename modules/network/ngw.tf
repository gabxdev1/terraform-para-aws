resource "aws_eip" "eks_ngw_eip_sa-east-1a" {
  domain = "vpc"
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eip-sa-east-1a"
    }
  )
}

resource "aws_eip" "eks_ngw_eip_sa-east-1b" {
  domain = "vpc"
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eip-sa-east-1b"
    }
  )
}

resource "aws_nat_gateway" "eks_nat_ngw_sa-east-1a" {
  allocation_id = aws_eip.eks_ngw_eip_sa-east-1a.id
  subnet_id     = aws_subnet.eks_subnet_public_sa-east-1a.id
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat-ngw-sa-east-1a"
    }
  )
}

resource "aws_nat_gateway" "eks_nat_ngw_sa-east-1b" {
  allocation_id = aws_eip.eks_ngw_eip_sa-east-1b.id
  subnet_id     = aws_subnet.eks_subnet_public_sa-east-1b.id
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-nat-ngw-sa-east-1b"
    }
  )
}

resource "aws_route_table" "eks_priv_rt-sa-east-1a" {
  vpc_id = aws_vpc.eks-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_nat_ngw_sa-east-1a.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-priv-rt-sa-east-1a"
    }
  )
}

resource "aws_route_table" "eks_priv_rt-sa-east-1b" {
  vpc_id = aws_vpc.eks-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_nat_ngw_sa-east-1b.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-priv-rt-sa-east-1b"
    }
  )
}
