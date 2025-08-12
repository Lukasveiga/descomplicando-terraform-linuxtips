terraform {
  backend "s3" {
    bucket       = "descomplicando-terraform-veiga"
    key          = "state/terraform.tfstate" # path inside the bucket
    region       = "us-east-2"
    profile      = "terraform_study"
    use_lockfile = true

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
  profile = "terraform_study"
}
