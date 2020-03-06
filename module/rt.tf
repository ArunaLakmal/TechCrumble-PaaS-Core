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

resource "aws_default_route_table" "tc_private_rt" {
  default_route_table_id = "${aws_vpc.tc_vpc.default_route_table_id}"

  tags = {
    Name = "tc_pvt_rt"
  }
}
