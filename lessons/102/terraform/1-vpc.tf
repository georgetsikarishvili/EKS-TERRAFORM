resource "aws_vpc" "EKS" {
  cidr_block = "172.27.0.0/16"

  tags = {
    Name = "EKS"
  }
}
