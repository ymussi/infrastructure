data "aws_caller_identity" "current" {}

locals {

  common_tags = {
    Service     = "Curso Terraform"
    ManageBy    = "Terraform"
    Environment = var.environment
    UpdatedAt   = time_static.time.rfc3339
    Owner       = var.owner
  }

  content_type = "application/json"

  bucket_name = "tfstate-${data.aws_caller_identity.current.account_id}"
}