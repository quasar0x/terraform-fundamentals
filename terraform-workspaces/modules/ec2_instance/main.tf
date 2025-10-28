provider "aws" {
  region = "eu-west-2"
}

variable "ami" {
  description = "This is the AMI for the instance"
}

variable "instance_type" {
  description = "This is the instance type for the EC2 instance"
}

resource "aws_instance" "ec2_server" {
  ami           = var.ami
  instance_type = var.instance_type
}
