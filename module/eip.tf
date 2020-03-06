resource "aws_eip" "tc_eip" {
  vpc        = true
  depends_on = ["aws_internet_gateway.tc_igw"]
}
