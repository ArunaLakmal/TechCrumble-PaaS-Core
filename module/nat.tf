resource "aws_nat_gateway" "tc_nat_gw" {
  allocation_id = "${aws_eip.tc_eip.id}"
  subnet_id     = "${aws_subnet.tc_pub2_sub.id}"
  depends_on    = ["aws_internet_gateway.tc_igw"]

  tags = {
    Name = "tc_ngw"
  }
}
