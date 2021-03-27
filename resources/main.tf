provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "teste_CI" {
  bucket = "teste-github-actions-00000001"
  acl    = "private"

  tags = {
    Name        = ""
    Environment = ""
  }
}

terraform {
  backend "s3" {
    bucket = "teste-github-actions-00000001 tfstate"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
