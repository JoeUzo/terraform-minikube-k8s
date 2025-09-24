variable "vpc_owner" {
  type = string
}

variable "vpc_use" {
  type = string
}

variable "vpc_public_subnets" {
  description = "A list of private subnets inside the VPC"
  type = list(string)
}

variable "vpc_private_subnets" {
  description = "A list of private subnets inside the VPC"
  type = list(string)
}

variable "environment" {
  description = "Environment"
  type = string
}

variable "vpc_cdir_blk" {
  description = "VPC cidr block"
  type = string
}
