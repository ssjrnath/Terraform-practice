# This Terraform code creates an AWS IAM policy that allows access to EC2 instances.
# The policy allows the ec2.amazonaws.com service to run, describe, and terminate EC2 instances.
# It also attaches the policy to an existing IAM role.
#
# FILEPATH: /Users/raghus/Seagen/Terraform/policy.tf
/*
  This Terraform code creates an AWS IAM policy that allows access to EC2 instances.
  The policy allows the ec2.amazonaws.com service to run, describe, and terminate EC2 instances.
  It also attaches the policy to an existing IAM role.
*/

resource "aws_iam_policy" "ec2_access" {
  name        = "allow-ec2-access"
  description = "Allows access to EC2 instances"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": [
        "ec2:RunInstances",
        "ec2:DescribeInstances",
        "ec2:TerminateInstances"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "ec2_access_attachment" {
  role       = aws_iam_role.example_role.id
  policy_arn = aws_iam_policy.ec2_access.arn
}
