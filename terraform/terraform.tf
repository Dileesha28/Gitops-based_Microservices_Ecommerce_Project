terraform {

   backend "s3" {
    bucket = "devopsecom-terraform-backend-bucket-new"
    key    = "s3-backend"
    region = "eu-north-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

