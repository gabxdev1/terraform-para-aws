module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "eks_cluster" {
  source                   = "./modules/cluster"
  project_name             = var.project_name
  tags                     = local.tags
  public_subnet_sa-east-1a = module.eks_network.subnet_pub_sa-east-1a_id
  public_subnet_sa-east-1b = module.eks_network.subnet_pub_sa-east-1b_id
}
