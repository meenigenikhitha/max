resource "aws_instance" "dhev" {
    ami = "ami-0e1d06225679bc1c5"
    key_name = "nikkipair"
    instance_type = "t2.micro"
  tags = {
    Name = "nikki"
  }
}