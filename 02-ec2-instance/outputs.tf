output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.my_server.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.my_server.public_ip
}

output "instance_state" {
  description = "State of the EC2 instance"
  value       = aws_instance.my_server.instance_state
}
