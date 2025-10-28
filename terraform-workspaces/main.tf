provider "aws" {
  region = "eu-west-2"
}

variable "ami" {
  description = "This is the AMI for the instance"
}

variable "instance_type" {
  description = "This is the instance type for the EC2 instance"
  type        = map(string)

  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.medium"
    "prod"  = "t2.xlarge"
  }
}

module "ec2_server" {
  ami           = var.ami
  source        = "./modules/ec2_instance"
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}
