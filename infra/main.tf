provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-mussibrsp"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Manageby = "Terraform"
  }
}