resource "aws_instance" "server" {
  ami           = data.aws_ami.amazon_linux.id # dynamic — always latest
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnets.default.ids[0]

  tags = {
    Name      = "data-source-demo"
    ManagedBy = "terraform"
  }
}
