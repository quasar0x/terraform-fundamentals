output "instance-id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2-01.id
}

output "public-ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.ec2-01.public_ip
}
