# resource "aws_s3_bucket" "example" {
#   bucket = "BucketSalokhiddin"

#   tags = {
#     Name        = "BucketSalokhiddin"
#   }
# }

terraform {
  backend "s3" {
    bucket = "BucketSalokhiddin"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}