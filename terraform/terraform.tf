terraform {

  backend "s3" {
    bucket = "devopsecom-terraform-backend-bucket"
    key    = "s3-backend"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

