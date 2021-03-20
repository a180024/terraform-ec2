terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = var.aws_profile
  region  = var.default_region
}

resource "aws_instance" "ec2_instance1" {
  ami                    = "ami-0e2e44c03b85f58b3"
  instance_type          = "t2.medium"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_instance1_sg.id]

  tags = {
    Name = "ec2_instance1"
  }
}
