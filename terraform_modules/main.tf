provider "aws" {
  region = "eu-west-2"
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

}
