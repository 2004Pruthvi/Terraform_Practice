provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "example" {
  ami           = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_security_group" "terraform_SG" {
  name        = "terraform_SG"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}