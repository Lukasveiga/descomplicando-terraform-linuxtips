variable "image_id" {
  type        = string
  default     = "ami-12345678" # Replace with your desired AMI ID
  description = "The ID of the AMI to use for the instance."
  sensitive   = false
  ephemeral   = false
  nullable    = false
  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id must be a valid AMI ID starting with 'ami-' and must be at least 5 characters long."
  }
}

// terraform plan -out plano -var="image_id=ami-12345678"
// terraform apply -var-file="testing.tfvars"
// export TF_VAR_image_id=ami-12345678
