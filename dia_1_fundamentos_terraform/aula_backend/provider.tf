terraform {
  backend "s3" {
    bucket  = "descomplicando-terraform-veiga"
    key     = "terraform.tfstate" # path inside the bucket
    region  = "us-east-2"
    profile = "descomplicando_terraform"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "descomplicando_terraform"
}
