terraform {
  backend "s3" {
    bucket         = "quasar-0-s3"
    region         = "eu-west-2"
    dynamodb_table = "terraform_lock"
    key            = "quasar0x/terraform.tfstate"
  }
}
