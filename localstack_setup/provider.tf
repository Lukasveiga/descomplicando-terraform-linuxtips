terraform {
  backend "s3" {
    bucket                      = "local-terraform-state"
    key                         = "terraform/state.tfstate"
    region                      = "us-east-2"
    use_path_style              = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-2"
  profile                     = "localstack"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    s3  = "http://localhost:4566"
    sts = "http://localhost:4566"
  }
  # ESSENCIAL PARA AWS PROVIDER 5.x + LOCALSTACK
  s3_use_path_style = true
}

