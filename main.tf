# Specify the AWS provider and region
provider "aws" {
  region = "us-east-1"  # desired AWS region
}

# Define an AWS EC2 instance
resource "aws_instance" "terraform_instance" {
  ami           = "ami-0c0b74d29acd0cd97"  # a valid AMI ID for your region
  instance_type = "t2.micro"                # desired instance type

  tags = {
    Name = "terraform-instance"
  }
}
