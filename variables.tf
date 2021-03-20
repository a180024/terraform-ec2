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



