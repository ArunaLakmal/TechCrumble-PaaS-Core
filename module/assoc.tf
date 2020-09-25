resource "aws_route_table_association" "tc_public1_assoc" {
  subnet_id      = "${aws_subnet.tc_pub1_sub.id}"
  route_table_id = "${aws_route_table.tc_public_rt.id}"
}

resource "aws_route_table_association" "tc_public2_assoc" {
  subnet_id      = "${aws_subnet.tc_pub2_sub.id}"
  route_table_id = "${aws_route_table.tc_public_rt.id}"
}

resource "aws_route_table_association" "tc_priv1_assoc" {
  subnet_id      = "${aws_subnet.tc_pri1_sub.id}"
  route_table_id = "${aws_route_table.tc_private_rt.id}"
}

resource "aws_route_table_association" "tc_priv2_assoc" {
  subnet_id      = "${aws_subnet.tc_pri2_sub.id}"
  route_table_id = "${aws_route_table.tc_private_rt.id}"
}
