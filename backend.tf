provider "aws" {
  region = ""
}

terraform {
  backend "s3" {
    bucket = ""
    key    = ""
    region = ""
  }
}
