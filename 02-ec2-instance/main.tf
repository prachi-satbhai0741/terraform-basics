resource "aws_instance" "my_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"              # Free tier eligible

  tags = {
    Name        = "my-first-instance"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
