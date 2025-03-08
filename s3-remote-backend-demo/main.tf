module "ec2_example" {
  source = "./ec2-module"
  ami_id="ami-04b4f1a9cf54c11d0"
  instance_type="t2.micro"
  key_name = "shyam-devops"
  instance_name = "terraform-demo"
}