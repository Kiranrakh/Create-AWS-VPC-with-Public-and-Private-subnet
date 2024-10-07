#8. NAT Gateway
resource "aws_nat_gateway" "yt-nat-gateway" {
  subnet_id     = element(aws_subnet.private_subnet[*].id, 0)
  allocation_id = aws_eip.eip.id
  depends_on    = [aws_internet_gateway.igw_vpc]
  tags = {
    Name = "Project-Fusion-Nat Gateway"
  }
}
