variable "instance_type" {
  description = "Type of instance to use for the compute resource"
  type        = string
}

variable "assc_pub_ip" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = null
}

variable "use_default_module_sg" {
  description = "Whether to use the default security group"
  type        = bool
  default     = true
}

variable "security_group_ids" {
  description = "Extra security group IDs to attach"
  type        = list(string)
  default     = []
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "subnet_id" {
  description = "The Subnet ID where the instance will be launched"
  type        = string
}

variable "my_ec2_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "use_user_data" {
  description = "Whether to use user data script"
  type        = bool
  default     = false
}

variable "user_data" {
  description = "User data script content"
  type        = string
  default     = ""
  sensitive   = true
}

variable "extra_tags" {
  description = "Additional tags to apply to the instance"
  type        = map(string)
  default     = {}
}