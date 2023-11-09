/*
  This Terraform code defines an AWS security group resource named "example_security_group"
  that allows incoming traffic on ports 80 and 443. The security group is associated with
  the default VPC in the AWS account.
*/
// Provide valid VPC name instaed of "example_vpc". Incase of no available VPC comment out VPC related code and run terraform plan
data "aws_vpc" "example_vpc" {
  default = true
}

locals {
  ingress_rules = [
    {
      port        = 80
      description = "HTTP"
    },
    {
      port        = 443
      description = "HTTPS"
    }
  ]
}

resource "aws_security_group" "example_security_group" {
  name   = "example_security_group"
  vpc_id = data.aws_vpc.example_vpc.id

  dynamic "ingress" {
    for_each = local.ingress_rules
    content {
      description = ingress.value.description
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
