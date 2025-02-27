resource "aws_instance" "aws_ec2_demo" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = var.instance_name
    }
}
