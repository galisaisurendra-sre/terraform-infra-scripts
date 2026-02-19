locals {
  s3_name = "${var.client}-bucket-${var.environment}"
}

resource "aws_s3_bucket" "this" {
  bucket = local.s3_name
  tags = {
    Name        = local.s3_name
    Environment = "${var.environment}-bucket"
  }
}

