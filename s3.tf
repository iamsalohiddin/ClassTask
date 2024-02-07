resource "aws_s3_bucket" "example" {
  bucket = "BucketSalokhiddin"

  tags = {
    Name        = "BucketSalokhiddin"
  }
}