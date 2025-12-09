terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"

    }
  }
  backend "s3" {
    bucket = "mo-terraform-25"
    key    = "project/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "mo_terraform_25" {
  ami           = "ami-0648ea225c13e0729"
  instance_type = "t2.micro"

  tags = {
    Name = "mo_terraform_25"
  }
}