variable "vpc_owner" {
  type = string
  default = "terraform"
}

variable "vpc_use" {
  type = string
  default = "dev"
}

variable "public_subnets" {
  description = "A list of private subnets inside the VPC"
  type = list(string)
  default = [ "10.0.1.0/24" ]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type = list(string)
  default = [ "10.0.2.0/24" ]
}

variable "environment" {
  description = "Environment"
  type = string
  default = "dev"
}

variable "cdir_blk" {
  description = "VPC cidr block"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type        = bool
  default     = true
}

variable "man_def_route_tb" {
  description = "Should be true to manage default route table"
  type = bool
  default = false
}