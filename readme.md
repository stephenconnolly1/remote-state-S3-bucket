# Module to create a S3 bucket for storing remote state

The bucket can be used for storing Terraform state files remotely.

You will need to provide a `terraform.tfvars` file in the folder that defines values for the secrets associated with the IAM user you are using

    access_key = "<KEY_ID>"
    secret_key = "<Secret key>"```
