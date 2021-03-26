provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "teste_CI" {
  bucket = "teste-gitHub-actions"
  acl    = "private"

  tags = {
    Name        = ""
    Environment = ""
  }
}