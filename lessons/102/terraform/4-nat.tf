resource "aws_eip" "EKS-nat" {
  vpc = true

  tags = {
    Name = "EKS-nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.EKS-nat.id
  subnet_id     = aws_subnet.public-eu-central-1a.id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.EKS-igw]
}
