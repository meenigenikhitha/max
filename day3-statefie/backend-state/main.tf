provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "vasu" {
  ami = "ami-0e1d06225679bc1c5"
  instance_type = "t2.micro"
  key_name = "nikkipair"
}