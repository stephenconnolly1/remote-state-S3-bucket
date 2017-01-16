# Module to create a S3 bucket for storing remote state

The code creates two S3 buckets. One for storing Terraform state files remotely and one for storing bucket logs for the state file bucket. The state file stores versions so
you can go back to earlier versions in the case of an emergency.

Bucket names have to be globally unique so you will need to provide a unique
value as an input variable. Typically this would be a concatenation of the name of your project and the environment, e.g. apollo-dev.

You will need to provide a `terraform.tfvars` file in the folder that defines values for the secrets associated with the IAM user you are using and the above bucket-ID variable

    access_key = "<KEY_ID>"
    secret_key = "<SECRET_KEY>"
    bucket-ID  = "<YOUR-UNIQUE-ID>"

### To create the bucket

Open a command prompt and run

    terraform plan

Then once you are happy with the plan run

    terraform plan

Make a note of the output, as this contains the name of the bucket ID you will need
to pass into the configuration of your main terraform project so that it can store state in the S3 bucket.
