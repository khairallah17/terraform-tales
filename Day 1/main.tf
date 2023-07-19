terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws",
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-south-2" # replace this with the nearest region to you
}

resource "aws_instance" "terraform-example" {
    ami             = "ami-011899242bb902164" # machine image
    instance_type   = "t2.micro" # instance configuration
}