variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH access"
  type        = string
  default     = "" # set this to your key pair name to use remote-exec
}

variable "private_key_path" {
  description = "Path to the private key file (.pem) matching key_name"
  type        = string
  default     = "" # e.g. "~/.ssh/my-key.pem"
}
