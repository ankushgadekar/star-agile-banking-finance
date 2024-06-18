terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1a"
}
resource "aws_instance" "web" {
  ami           = "ami-05e00961530ae1b55"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-capstone"
  }
}
