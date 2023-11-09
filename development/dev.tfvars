// The variables required for the development environment.
// aws_region: The AWS region where the resources will be created.
// instance_type: The EC2 instance type for the resources.
// bucket_name: The name of the S3 bucket where the Terraform state file will be stored.
// bucket_key: The name of the Terraform state file in the S3 bucket.
aws_region    = "us-west-2"
instance_type = "t2.micro"
bucket_name   = "terraform-state-dev"
bucket_key    = "terraform-dev.tfstate"
