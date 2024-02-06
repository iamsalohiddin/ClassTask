resource "aws_s3_bucket" "example" {
  bucket = "ClassTaskforSalokhiddin"

  tags = {
    Name        = "ClassTaskforSalokhiddin"
  }
}
terraform {
  backend "s3" {
    bucket = "ClassTaskforSalokhiddin"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
