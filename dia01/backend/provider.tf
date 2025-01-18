terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-veiga"
    key    = "aula_backend"
    region = "us-east-2"
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
  shared_config_files      = ["$HOME/.aws/config"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  region = "us-east-2"
  profile = "descomplicando_terraform"
}