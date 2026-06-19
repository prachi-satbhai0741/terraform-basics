output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.server.id
}

output "ami_used" {
  description = "AMI ID fetched via data source"
  value       = data.aws_ami.amazon_linux.id
}

output "default_vpc_id" {
  description = "ID of the default VPC"
  value       = data.aws_vpc.default.id
}
