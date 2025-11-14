# Before initializing Terraform, create the S3 bucket for your remote state:
aws --endpoint http://localhost:4566 --profile localstack --region us-east-2 s3 mb s3://local-terraform-state