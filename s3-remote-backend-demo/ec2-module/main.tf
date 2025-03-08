resource "aws_security_group" "terraform-demo-sg" {

    name        = "tf-demo-sg"
    description = "creating a sample security group and attaching it to the ec2"

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "aws_ec2_demo" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = [ aws_security_group.terraform-demo-sg.name ]

    tags = {
        Name = var.instance_name
    }
}
