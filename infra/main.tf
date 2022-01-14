provider "aws" {
    region = "us-east-2"
}


variable "image" {
  default = "ami-0603cbe34fd08cb81"
}

variable "hardware" {
  default = "t2.medium"
}

variable "name" {
 default = "server1"
}

resource "aws_instance" "web" {
  ami           = var.image
  instance_type = var.hardware

  tags = {
    Name = var.name
    Env = upper("production")
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}