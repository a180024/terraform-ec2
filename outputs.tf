output "ec2_instance1_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2_instance1.id
}

output "ec2_instance1_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance1.public_ip
}

output "db_instance1_id" {
  description = "ID of the DB instance"
  value       = aws_db_instance.db_instance1.id
}
