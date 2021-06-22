terraform {
  required_version = "1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.39.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.bucket_tags
}
