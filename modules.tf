module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "eks_cluster" {
  source                   = "./modules/cluster"
  project_name             = var.project_name
  tags                     = var.tags
  public_subnet_sa-east-1a = module.eks_network.subnet_pub_sa-east-1a_id
  public_subnet_sa-east-1b = module.eks_network.subnet_pub_sa-east-1b_id
  depends_on               = [module.eks_network]
}

module "eks_managed_node_group" {
  source                 = "./modules/managed-node-group"
  project_name           = var.project_name
  tags                   = var.tags
  subnet-priv-sa-east-1a = module.eks_network.subnet_priv_sa-east-1a_id
  subnet-priv-sa-east-1b = module.eks_network.subnet_priv_sa-east-1b_id
  cluster_Name           = module.eks_cluster.eks_cluster_name
  instance_type          = var.instance_type
  scaling_config         = var.scaling_config
  depends_on             = [module.eks_cluster]
}

module "eks_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = var.tags
  oidc_issuer  = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.eks_cluster_name
  vpc_id       = module.eks_network.vpc_id
  depends_on   = [module.eks_managed_node_group]
}
