# AWS details
variable "aws_region" {
  type = string # AWS region where resources will be created
}

# EC2 instance type
variable "instance_type" {
  type = string # Type of EC2 instance to be launched
}

# S3 bucket details
variable "bucket_name" {
  type = string # Name of the S3 bucket to be created
}

variable "bucket_key" {
  type = string # Key for the S3 bucket object
}
