output "instance_id" {
  description = "ID of the main demo EC2 instance"
  value       = aws_instance.server.id
}

output "public_ip" {
  description = "Public IP of the main demo EC2 instance"
  value       = aws_instance.server.public_ip
}
