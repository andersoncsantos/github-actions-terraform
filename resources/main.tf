provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "teste_CI" {
  bucket = "Teste-GitHub-Actions"
  acl    = "private"

  tags = {
    Name        = ""
    Environment = ""
  }
}