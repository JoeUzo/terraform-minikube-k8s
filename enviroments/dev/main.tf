module "vpc_module" {
  source = "../../modules/network"
  vpc_owner = var.vpc_owner
  vpc_use = var.vpc_use
  private_subnets = var.vpc_private_subnets
  public_subnets = var.vpc_public_subnets
  environment = var.environment
  cdir_blk = var.vpc_cdir_blk
}

module "ec2_module" {
  source = "../../modules/compute"
  instance_type = var.ec2_instance_type
  subnet_id = module.vpc_module.public_subnets[0]
  vpc_id = module.vpc_module.vpc_id
  my_ec2_name = var.ec2_name
  key_name = var.key_pair_name
  use_user_data = var.ec2_use_user_data
  user_data = file("${path.root}/user_data.sh")

  depends_on = [ module.vpc_module ]
}