/*
Creates an AWS IAM role and instance profile with the specified name and trust policy.
The trust policy allows EC2 instances to assume the role.
*/

resource "aws_iam_role" "example_role" {
  name               = "example-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "example_profile" {
  name = "example-profile"
  role = aws_iam_role.example_role.name
}
