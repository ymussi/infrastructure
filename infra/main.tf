terraform {
  required_version = "0.15.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.39.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-mussibrsp"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManageBy    = "Terraform"
    UpdatedAt = "2021-05-09:14:04"
  }
}
