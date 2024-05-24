provider "aws" {
  
}

resource "aws_instance" "dependency" {
    ami = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  key_name =  "nikki-keypair"
  tags = {
    Name = "vasu"
  }
}
