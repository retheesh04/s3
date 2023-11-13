
terraform {
  backend "s3" {
    bucket = "vv-s3bucket-terraform-tfstate"
    region = "us-east-1"
    key    = "VV-SQS/terraform.tfstate"


  }
}
