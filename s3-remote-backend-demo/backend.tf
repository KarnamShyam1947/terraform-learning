terraform {
  backend "s3" {
    bucket         = "shyam-terraform-state-backend-bucket"
    key            = "shyam/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}