terraform {
  backend "s3" {
    bucket = "normis"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}