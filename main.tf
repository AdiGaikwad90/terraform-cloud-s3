terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"   # Change to your preferred region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-simple-s3-bucket-12345"  # Must be globally unique
  acl    = "private"                    # Access control (private by default)
}
