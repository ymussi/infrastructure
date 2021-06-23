output "instance_arn" {
  value       = aws_instance.web.arn
  description = ""
}

output "instance_domain_name" {
  value       = aws_instance.web.id
  description = ""
}

output "bucket_arn" {
  value       = aws_s3_bucket.remote-state
  description = ""
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.remote-state.bucket_domain_name
  description = ""
}

output "bucket_name" {
  value       = aws_s3_bucket.remote-state.bucket
  description = ""
}
