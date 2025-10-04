locals {
  default_sg_ids = var.use_default_module_sg ? [aws_security_group.default_sg[0].id] : []
}
