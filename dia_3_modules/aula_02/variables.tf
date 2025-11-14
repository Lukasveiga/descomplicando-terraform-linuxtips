variable "name" {
  type        = string
  description = "Instance name"
}

variable "env" {
    type = string
    default = "dev"
    description = "Instance environment"
}
