resource "aws_s3_bucket" "vv-main" {
  bucket = "vv-s3bucket-terraform-tfstate"
  force_destroy = false
  
  lifecycle {
    prevent_destroy = true
  }
}


resource "aws_s3_bucket_versioning" "vv-main-versioning" {
  bucket = aws_s3_bucket.vv-main.id
  versioning_configuration {
    status = "Enabled"
  }
}