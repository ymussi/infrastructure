variable "aws_region" {
  type        = string
  description = " Define aws region"
  default     = "us-east-1"
}

variable "owner" {
  type        = string
  description = ""
  default     = "Yuri Mussi"
}

variable "aws_profile" {
  type        = string
  description = " Define aws profile"
  default     = "terraform"
}

variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}

variable "bucket_acl" {
  type        = string
  description = "Define a s3 bucket acl"
  default     = "private"
}

variable "instance_ami" {
  type        = string
  description = " Define aws instance"
  default     = "ami-0d5eff06f840b45e9"
}

variable "instance_type" {
  type        = string
  description = " Define aws instance type"
  default     = "t2.micro"
}