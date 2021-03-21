variable "vpc_id" {
  description = "ID of the default VPC"
}

variable "subnet_id" {
  description = "ID of the default subnet"
}

variable "aws_profile" {
  description = "Name of your AWS Configuration Profile"
}

variable "default_region" {
  description = "Default AWS Region"
  default     = "ap-southeast-1"
}

variable "db_instance1_username" {
  description = "Database username"
}

variable "db_instance1_password" {
  description = "Database password"
}

variable "db_subnet_group_name" {
  description = "RDS subnet group (private subnets)"
}

variable "vpc_cidr_block" {
  description = "IPV4 CIDR block of the default vpc"
}
