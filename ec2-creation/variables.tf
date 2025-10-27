variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI to use for the instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "key_name" {
  description = "Name of the PEM key pair"
  type        = string
}
