terraform {
	required_version = "~> 0.12"
}

provider "aws" {
	region = var.region
}

resource "aws_instance" "hello-tf-instance" {
  ami = var.ami
  count = var.hello_tf_instance_count
  instance_type = var.hello_tf_instance_type
}

