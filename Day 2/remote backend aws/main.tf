terraform {

    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
      }
    }

}

# select prefered region
provider "aws" {
  region = "eu-west-3"
}

# create s3 bucket
resource "aws_s3_bucket" "opencart" {
  bucket        = "terraform-tales-remote-state"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "opencart_bucket_versioning" {
  bucket = aws_s3_bucket.opencart.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "opencart_crypto_conf" {
    bucket = aws_s3_bucket.opencart.bucket
    rule {
        apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
        }
    }
}

resource "aws_dynamodb_table" "opencart_locks" {
    name = "terraform-tales-state-locking"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
}