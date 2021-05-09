variable "aws_region" {
    type = string
    description = " Define aws region"
    default = "us-east-1"
}

variable "aws_profile" {
    type = string
    description = " Define aws profile"
    default = "terraform"
}

variable "instance_ami" {
    type = string
    description = " Define aws instance"
    default = "ami-0d5eff06f840b45e9"
}

variable "instance_type" {
    type = string
    description = " Define aws instance type"
    default = "t2.micro"
}

variable "instance_tags" {
    type = map(string)
    description = " Define aws instance tags"
    default = {
        Name = "Ubuntu"
        Project = "Curso AWS com Terraform"
    }
}
