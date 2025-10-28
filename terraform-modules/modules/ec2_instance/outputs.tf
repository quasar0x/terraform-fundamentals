output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2-01.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.ec2-01.public_ip
}
