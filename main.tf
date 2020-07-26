provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-123123142152352123123152"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}