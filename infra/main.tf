provider "aws" {
region = "us-east-1"
}

variable "hw" {
default = "t2.medium"
}

resource "aws_instance" "b1" {
ami = "ami-083602cee93914c0c"
instance_type = var.hw
tags = {
Name = "server1"
Env = "Dev"
}
}
