/*
  This Terraform configuration file defines the required AWS provider and version.
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.27.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
