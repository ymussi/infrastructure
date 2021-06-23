output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = ""
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.this.bucket_domain_name
  description = ""
}

output "bucket_name" {
  value       = aws_s3_bucket.this.bucket
  description = ""
}

output "example_file" {
  value       = "${aws_s3_bucket.this.bucket}/${aws_s3_bucket_object.this.key}"
  description = ""
}