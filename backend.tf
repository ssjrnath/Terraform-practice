/* Local state and Remote state */

// Local backend configuration
terraform {
  backend "local" {
    path = "terraform.tfstate" // Path to the local state file
  }
}

// Amazon S3 backend configuration
# terraform {
#   backend "s3" {
#     bucket = var.bucket_name // Name of the S3 bucket to store the state file
#     key    = var.bucket_key // Key to use when storing the state file in the S3 bucket
#     region = var.aws_region // AWS region where the S3 bucket is located
#   }
# }
