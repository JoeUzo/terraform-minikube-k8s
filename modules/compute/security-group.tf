resource "aws_security_group" "sg" {
  count       = var.use_default_module_sg ? 1 : 0
  name        = "module-default-sg"
  description = "Allow inbound traffic"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = [
      { from = 80, to = 80, description = "Allow Port 80" },
      { from = 22, to = 22, description = "Allow Port 22" },
      { from = 8080, to = 8080, description = "Allow Port 8080" },
      { from = 50000, to = 50000, description = "Allow Port 50000" },
      { from = 8000, to = 8000, description = "Allow Port 8000" },
      { from = 25, to = 25, description = "Allow Port 25 (SMTP)" },
      { from = 465, to = 465, description = "Allow Port 465 (SMTPS)" },
    ]
    content {
      from_port   = ingress.value.from
      to_port     = ingress.value.to
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    description = "Allow all IPs and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "module-default-sg"
    terraform = "true"
  }

}