locals {
  common_tags = {
    Service     = "Curso Terraform"
    ManageBy    = "Terraform"
    Environment = var.environment
    UpdatedAt   = time_static.time.rfc3339
    Owner       = var.owner
  }

  example_file = "example/data.json"

  content_type = "application/json"
}