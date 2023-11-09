# EC2 instance details
variable "instance_type" {
  type = string # Type of EC2 instance to be launched
}

variable "instance_name" {
  type = string # Name of the Ec2 instance to be created
}

variable "owner_name" {
  type = string # Owner for the Ec2 instance
}

variable "environment" {
  type = string # Environment for the Ec2 instance
}

variable "vpc_security_group_ids" {
  type = list(string) # List of security group IDs to be attached to the instance
}
