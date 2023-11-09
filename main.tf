/*
This Terraform code defines a module that creates an EC2 instance with the specified instance type and VPC security group IDs.
The instance name and environment are derived from the Terraform workspace.
The owner name is set to "Everyone" for the "dev" workspace, and "DevOps Team" for all other workspaces.
*/

locals {
  instance_name = "${terraform.workspace}-instance"
  environment   = "${terraform.workspace}-env"
}

module "example_instance" {
  source                 = "./module"
  instance_name          = local.instance_name
  instance_type          = var.instance_type
  environment            = local.environment
  owner_name             = terraform.workspace == "dev" ? "Everyone" : "DevOps Team"
  vpc_security_group_ids = [aws_security_group.example_security_group.id]
}
