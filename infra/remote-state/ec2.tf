resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags = merge(local.common_tags, {
    Name    = "Ubuntu Remote State"
    Project = "Curso Terraform"
  })
}