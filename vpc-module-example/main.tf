provider "aws" {
  region = "us-east-1"
}

module "vpc-module" {
  source = "./modules"
  project_id = "terraform-vpc"
}
