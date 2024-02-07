terraform {
  backend "s3" {
    bucket = "BucketSalokhiddin"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}