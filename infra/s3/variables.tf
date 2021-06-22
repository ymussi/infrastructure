variable "aws_region" {
  type        = string
  description = " Define aws region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = " Define aws profile"
  default     = "terraform"
}

variable "instance_ami" {
  type        = string
  description = " Define aws instance"
  default     = "ami-0d5eff06f840b45e9"
}

variable "bucket_name" {
  type        = string
  description = "Define a s3 bucket name"
  default     = "bucket-mussibrsp"
}

variable "bucket_acl" {
  type        = string
  description = "Define a s3 bucket acl"
  default     = "private"
}

variable "instance_type" {
  type        = string
  description = " Define aws instance type"
  default     = "t2.micro"
}

variable "bucket_tags" {
  type        = map(string)
  description = "Define s3 bucket tags"
  default = {
    Name        = "My bucket"
    Environment = "Dev"
    ManageBy    = "Terraform"
    UpdatedAt   = "2021-06-22:20:08"
    Owner       = "Yuri Mussi"
  }
}

variable "instance_tags" {
  type        = map(string)
  description = " Define aws instance tags"
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}
