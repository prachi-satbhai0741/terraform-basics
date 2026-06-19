locals {
  # Different instance size depending on workspace
  instance_type = terraform.workspace == "prod" ? "t3.medium" : "t2.micro"
  env_name       = terraform.workspace
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = local.instance_type

  tags = {
    Name        = "server-${local.env_name}"
    Environment = local.env_name
    ManagedBy   = "terraform"
  }
}
