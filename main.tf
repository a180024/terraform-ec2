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

resource "aws_db_instance" "db_instance1" {
  identifier             = "db-instance1"
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "12.5"
  instance_class         = "db.t2.micro"
  name                   = "db_instance1"
  username               = var.db_instance1_username
  password               = var.db_instance1_password
  parameter_group_name   = "default.postgres12"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.db_instance1_sg.id]
  db_subnet_group_name   = var.db_subnet_group_name
}
