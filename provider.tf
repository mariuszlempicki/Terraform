# provider

provider "aws" {
  region  = "us-east-1"
  # profile = "panda" # tylko gdy istnieje taki --profile w ~/.aws/credentials
}

# terraform

terraform {
  backend "s3" {
    bucket = "mariusz-lempicki-panda-devops-core-8"
    key = "infra/terraform.state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.33"
    }
  }
  required_version = ">= 1.0.0"
}
