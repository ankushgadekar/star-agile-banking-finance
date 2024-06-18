terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1a"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "terraform-capstone"

  instance_type          = "t2.micro"
  key_name               = "ankush"
  monitoring             = true
  vpc_security_group_ids = ["vpc-091dd2c9b8e523e4a"]
  subnet_id              = "subnet-02579d4881a0001fe"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
