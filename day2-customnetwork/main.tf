resource "aws_vpc" "vasu" {
    cidr_block = "10.0.0.0/16"
  tags = {
    Name ="cust-vpc"
  }
}
resource "aws_subnet" "vasu" {
    vpc_id = aws_vpc.vasu.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "cust-subnet"
  }
}
resource "aws_internet_gateway" "vasu" {
  vpc_id = aws_vpc.vasu.id
  tags = {
    Name = "custom-gateway"
  }
}

resource "aws_route_table" "vasu" {
  vpc_id = aws_vpc.vasu.id
  tags = {
    Name = "custom-route"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vasu.id
    
}
}
resource "aws_route_table_association" "vasu" {
    subnet_id = aws_subnet.vasu.id
    route_table_id = aws_route_table.vasu.id
  
}
resource "aws_security_group" "vasu" {
    
    name = "allow_tls"
    vpc_id = aws_vpc.vasu.id
    tags = {
      Name = "custom-sg"
    }
    ingress {
        description = "tls from vpc"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "http from vpc"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "http from vpc"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        description = "tls from vpc"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
  
} 
resource "aws_instance" "vasu" {
    ami= "ami-0e1d06225679bc1c5"

    key_name = var.key_name
    instance_type = var.instance_type
    subnet_id = aws_subnet.vasu.id
    vpc_security_group_ids = [aws_security_group.vasu.id]
    tags = {
      Name = "vasu"
    }
  
}
