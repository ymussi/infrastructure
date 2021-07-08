data "aws_caller_identity" "current" {}

locals {

  instance_number = lookup(var.instance_number, var.environment)

  file_ext = "zip"

  object_name = "meu-arquivo-gerado-de-um-template"

  common_tags = {
    Service     = "Curso Terraform"
    ManageBy    = "Terraform"
    Environment = format("%s", var.environment)
    UpdatedAt   = time_static.time.rfc3339
    Owner       = var.owner
  }

  content_type = "application/json"

  bucket_name = "tfstate-${data.aws_caller_identity.current.account_id}-${var.environment}"
}