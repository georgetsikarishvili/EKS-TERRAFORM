resource "aws_internet_gateway" "EKS-igw" {
  vpc_id = aws_vpc.EKS.id

  tags = {
    Name = "EKS-igw"
  }
}
