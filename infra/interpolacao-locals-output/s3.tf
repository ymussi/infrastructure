resource "aws_s3_bucket" "my-test-bucket" {
  bucket = var.bucket_name
  acl    = var.bucket_acl
  tags   = var.bucket_tags
}
