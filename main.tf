// syntax is compatible with specific versions of Terraform, starting at 0.13
terraform {
  required_version = ">= 0.13.0, < 1.0.0"
  required_providers {
    aws = {

    }
  }
  backend "s3" {
    bucket = "anogues-terraform"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}


// instantiate AWS provider with a region
provider "aws" {
  region = "eu-west-1"
}


// create 10 users
module "users" {
  source = "./modules/cloudesk-user/"
  for_each = toset([
    for i in range(10) : format("user-new-%02d", i)
  ])

  name = each.key

  providers = {
    aws = aws
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "anogues-terraform"
  acl    = "private"

  tags = {
    Name        = "Terraform"
  }

}