// Terraform variables for creating bucket for remote state.

variable "access_key" {}

variable "secret_key" {}

variable "region" {
  default = "us-east-1"
}
variable "bucket_ID" {
  description = "A unique S3 bucket ID (mandatory)"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
