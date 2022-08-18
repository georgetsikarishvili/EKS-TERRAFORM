resource "aws_eip" "EKS-nat" {
  vpc = true

  tags = {
    Name = "EKS-nat"
  }
}

resource "aws_nat_gateway" "EKS-nat" {
  allocation_id = aws_eip.EKS-nat.id
  subnet_id     = aws_subnet.public-eu-central-1a.id

  tags = {
    Name = "EKS-nat"
  }

  depends_on = [aws_internet_gateway.EKS-igw]
}
