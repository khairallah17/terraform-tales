terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws",
        version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3" # replace this with the nearest region to you
}

resource "aws_instance" "terraform" {
    ami             = "ami-0f61de2873e29e866" # machine image
    instance_type   = "t2.micro" # instance configuration
}