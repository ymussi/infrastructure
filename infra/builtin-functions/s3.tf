resource "aws_s3_bucket" "remote-state" {

  bucket = local.bucket_name

  versioning {
    enabled = true
  }

  acl = var.bucket_acl

  tags = merge(local.common_tags, {
    Project = "Built in functions"
  })
}

resource "aws_s3_bucket_object" "remote-state" {

  bucket = aws_s3_bucket.remote-state.bucket

  key = "${uuid()}.${local.file_ext}"

  source = data.archive_file.json.output_path

  etag = filemd5(data.archive_file.json.output_path)

  content_type = local.content_type

  tags = local.common_tags
}
