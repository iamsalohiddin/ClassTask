terraform {
  backend "s3" {
    bucket = "nBucketSalokhiddin"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}