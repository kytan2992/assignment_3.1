locals {
  resource_prefix = "ky-tf"
}

resource "aws_dynamodb_table" "bookinventory" {
  name         = "${local.resource_prefix}-bookinventory"
  billing_mode = "PAY_PER_REQUEST"

  hash_key  = var.hash_key
  range_key = var.sort_key

  attribute {
    name = var.hash_key
    type = "S"
  }

  attribute {
    name = var.sort_key
    type = "S"
  }

  tags = {
    Terraform = "true"
  }
}