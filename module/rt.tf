resource "aws_route_table" "tc_public_rt" {
  vpc_id = "${aws_vpc.tc_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.tc_igw.id}"
  }

  tags = {
    Name = "tc_pub_rt"
  }
}

resource "aws_route_table" "tc_private_rt" {
  vpc_id = "${aws_vpc.tc_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.tc_nat_gw.id}"
  }

  tags = {
    Name = "tc_private_rt"
  }
}