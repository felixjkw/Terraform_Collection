provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web" {
  ami = "ami-02ff57195b457bd9a"
  instance_type = "t3.micro"

  subnet_id = "<SUBNET>"
  vpc_security_group_ids = ["<SECURITY_GROUP>"]

  tags = {
  "Identity" = "<IDENTITY>"
  }
}