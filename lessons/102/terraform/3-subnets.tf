resource "aws_subnet" "private-eu-central-1a" {
  vpc_id            = aws_vpc.EKS.id
  cidr_block        = "172.27.1.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    "Name"                            = "private-eu-central-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "private-eu-central-1b" {
  vpc_id            = aws_vpc.EKS.id
  cidr_block        = "172.27.2.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    "Name"                            = "private-eu-central-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "public-eu-central-1a" {
  vpc_id                  = aws_vpc.EKS.id
  cidr_block              = "172.27.3.0/24"
  availability_zone       = "eu-central-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-eu-central-1a"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}

resource "aws_subnet" "public-eu-central-1b" {
  vpc_id                  = aws_vpc.EKS.id
  cidr_block              = "172.27.4.0/24"
  availability_zone       = "eu-central-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                       = "public-eu-central-1b"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/demo" = "owned"
  }
}
