resource "aws_instance" "ec2_instance" {
  ami = data.aws_ami.ubuntu_ami.id
  instance_type = var.instance_type

  subnet_id = var.subnet_id
  associate_public_ip_address = var.assc_pub_ip

  key_name = var.key_name
  vpc_security_group_ids = concat(local.default_sg_ids, var.security_group_ids)
  # security_groups = concat(local.default_sg_ids, var.security_group_ids)

  user_data = var.use_user_data ? var.user_data : null  

  tags = merge ({
    Name = var.my_ec2_name
    terraform = "true"
  },
    var.extra_tags
  )

  lifecycle {
    ignore_changes = [
      associate_public_ip_address,
      vpc_security_group_ids,
      security_groups,
      ami
    ]
  }
}