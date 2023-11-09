/*
This output block defines the output variable "instance" which is set to the value of the AWS EC2 instance resource "example_instance".
*/
output "instance" {
  value = aws_instance.example_instance
}
