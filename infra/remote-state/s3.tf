data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  versioning {
    enabled = true
  }

  acl = var.bucket_acl
  tags = merge(local.common_tags, {
    Project = "remote-state"
  })
}

