resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  acl    = var.bucket_acl
  tags   = local.common_tags
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = local.example_file
  source       = local.example_file
  etag         = filemd5(local.example_file)
  content_type = local.content_type
}
