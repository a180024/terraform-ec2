# Creating an EC2 instance in AWS with RDS

This example provides configuration for creating an EC2 and RDS Postgres instance. <br />

The example uses existing vpc and subnet configurations and creates an elastic IP for the EC2 instance. <br/>

## Usage
Create an env.tfvars file and fill in your AWS configuration profile, region, vpc, subnet ids, database username, database password and vpc cidr block and db subnet group name. <br/>

DB subnet group can be created via the RDS console and should consist of private subnets.

```
aws_profile = ""
default_region = ""
vpc_id = ""
subnet_id = ""
vpc_cidr_block        = ""
db_subnet_group_name  = ""
db_instance1_username = ""
db_instance1_password = ""
```

Run `terraform validate` to validate the current plan. <br/>

Run `terraform plan` to review the infrastructure. <br/>

Then run `terraform apply -var-file=env.tfvars` to build.



