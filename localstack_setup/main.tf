resource "aws_s3_bucket" "example" {
  bucket        = "my-local-bucket"
  force_destroy = true
}
