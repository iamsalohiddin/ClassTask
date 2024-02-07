resource "aws_s3_bucket" "example" {
  bucket = "bucketsalokhiddin"

  tags = {
    Name        = "bucketsalokhiddin"
  }
}

terraform {
  backend "s3" {
    bucket = "bucketsalokhiddin"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}