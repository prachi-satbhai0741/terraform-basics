output "current_workspace" {
  description = "Active Terraform workspace"
  value       = terraform.workspace
}

output "instance_id" {
  description = "ID of the EC2 instance for this workspace"
  value       = aws_instance.server.id
}

output "instance_type_used" {
  description = "Instance type chosen based on workspace"
  value       = local.instance_type
}
