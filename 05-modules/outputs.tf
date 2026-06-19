output "web_server_id" {
  description = "Instance ID of the web server module"
  value       = module.web_server.instance_id
}

output "web_server_public_ip" {
  description = "Public IP of the web server module"
  value       = module.web_server.public_ip
}

output "app_server_id" {
  description = "Instance ID of the app server module"
  value       = module.app_server.instance_id
}
