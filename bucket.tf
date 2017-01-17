
resource "aws_s3_bucket" "b-state" {
    bucket = "tf-remote-state-${var.bucket_ID}" // MUST BE A Unique name
    acl = "private"
    versioning {
      enabled = true
    }
    logging {
      target_bucket = "${aws_s3_bucket.b-log.id}" // Must be a unique name
      target_prefix = "log/"
    }
    tags {
        Name = "TF-remote-state"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket" "b-log" {
    bucket = "tf-remote-state-logs-${var.bucket_ID}"
    acl = "log-delivery-write"
    versioning {
      enabled = true
    }
    tags {
        Name = "TF-remote-state-log"
        Environment = "Dev"
    }
}

// Outputs to pass into the remote state configuration stage
output "Remote State Bucket ID" {
  value="${aws_s3_bucket.b-log.id}"
}
