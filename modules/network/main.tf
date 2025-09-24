module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = ">=6.2.0"

  name = local.name_
  cidr = var.cdir_blk

  azs             = local.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
  manage_default_route_table = var.man_def_route_tb
  

  tags = local.common_tags

  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }
}