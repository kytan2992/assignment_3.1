provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "ky-s3-terraform"
    key    = "ky-terraform-asg3-1.tfstate"
    region = "us-east-1"
  }
}
