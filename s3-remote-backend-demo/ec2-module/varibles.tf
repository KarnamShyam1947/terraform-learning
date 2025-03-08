variable "ami_id" {
    type = string
    description = "AWS EC2 AMI Id"
    default = "ami-04b4f1a9cf54c11d0"
}

variable "instance_type" {
    type = string
    description = "AWS EC2 Instance type"
    default = "t2.micro"
}

variable "key_name" {
    type = string
    description = "AWS EC2 Login private key"
    default = "my-key-pair"
}

variable "instance_name" {
    type = string
    description = "AWS EC2 Instance Name"
    default = "demo"
}