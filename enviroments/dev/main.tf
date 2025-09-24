module "vpc_module" {
  source = "../../modules/network"
  vpc_owner = var.vpc_owner
  vpc_use = var.vpc_use
  private_subnets = var.vpc_private_subnets
  public_subnets = var.vpc_public_subnets
  environment = var.environment
  cdir_blk = var.vpc_cdir_blk
}