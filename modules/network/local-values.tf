locals {
    name_= "${var.environment}-${var.vpc_owner}-${var.vpc_use}"

    common_tags = {
        owners = var.vpc_owner
        use = var.vpc_use
        terraform = "True"
        environment = var.environment
    }

    az_names = data.aws_availability_zones.avail_azs.names
    azs = slice(local.az_names, 0, min(3, length(local.az_names)))
}