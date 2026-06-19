data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# EC2 instance with local-exec — logs the instance ID to a local file
# (works without any key pair / SSH setup)
resource "aws_instance" "server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name      = "provisioner-demo"
    ManagedBy = "terraform"
  }

  provisioner "local-exec" {
    command = "echo Instance ID: ${self.id}, Public IP: ${self.public_ip} >> instance_log.txt"
  }
}

# Optional: EC2 instance with remote-exec — requires a real key pair.
# Set var.key_name and var.private_key_path to use this.
resource "aws_instance" "configured_server" {
  count         = var.key_name != "" ? 1 : 0
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name      = "remote-exec-demo"
    ManagedBy = "terraform"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file(var.private_key_path)
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }
}

# null_resource — runs a script independently of any real resource
resource "null_resource" "run_script" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo 'Infra ready!' && date"
  }
}
