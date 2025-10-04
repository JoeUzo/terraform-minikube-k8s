locals {
  default_sg_ids = var.use_default_module_sg ? [aws_security_group.sg[0].id] : []
}
