resource "aws_instance" "server" {
  instance_type = "t2.micro"
  ami           = "ami-046c2381f11878233"
  subnet_id     = "subnet-0855eed8245c8a405"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "quasar-0-s3"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
