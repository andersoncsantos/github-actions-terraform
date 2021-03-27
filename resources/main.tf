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

resource "aws_s3_bucket" "tfstate" {
  bucket = "terraform-tfstate-00000001"
  acl    = "private"

  tags = {
    Name        = ""
    Environment = ""
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-tfstate-00000001"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}
