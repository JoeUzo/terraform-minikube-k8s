variable "my_region" {
  type = string
}


##### NETWORK VARIABLES #####
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



##### COMPUTE VARIABLES #####
variable "ec2_instance_type" {
  description = "Type of instance to use for the compute resource"
  type        = string
}

variable "ec2_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "key_pair_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = null
  
}

variable "ec2_use_user_data" {
  description = "Whether to use user data script"
  type        = bool
  default     = false
}

# variable "user_data" {
#   description = "User data script content"
#   type        = string
#   default     = ""
# }