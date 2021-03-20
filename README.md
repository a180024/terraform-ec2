# Creating an EC2 instance in AWS with RDS

This example provides configuration for creating an EC2 and RDS Postgres instance. <br />

The example uses existing vpc and subnet configurations and creates an elastic IP for the EC2 instance. <br/>

## Usage
Create an env.tfvars file and fill in your AWS configuration profilename, region, vpc and subnet ids.

```
aws_profile = ''
default_region = ''
vpc_id = ''
subnet_id = ''
```

Run `terraform validate` to validate the current plan. <br/>

Run `terraform plan` to review the infrastructure. <br/>

Then run `terraform apply -var-file=env.tfvars` to build.



