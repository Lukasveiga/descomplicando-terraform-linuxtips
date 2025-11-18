locals {
  cidr_block_subnets = cidrsubnets(aws_vpc.main.cidr_block, 8, 8) // Cria sub-redes a partir do bloco CIDR da VPC
  availability_zones = ["us-east-2a", "us-east-2b"]
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main" {
  count             = 2
  vpc_id            = aws_vpc.main.id
  cidr_block        = local.cidr_block_subnets[count.index]
  availability_zone = local.availability_zones[count.index]

  tags = {
    Name = "Main Subnet ${count.index + 1}"
  }
}
