/*
Creates an AWS EC2 instance with the specified AMI ID, instance type, IAM instance profile, security group, and tags.
*/
resource "aws_instance" "example_instance" {
  ami           = "<AMI_ID>"
  instance_type = var.instance_type

  iam_instance_profile = aws_iam_instance_profile.example_profile.name
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name        = var.instance_name
    Owner       = var.owner_name
    Environment = var.environment
  }
}
