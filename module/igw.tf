resource "aws_internet_gateway" "tc_igw" {
  vpc_id = "${aws_vpc.tc_vpc.id}"

  tags = {
    Name = "tc_igw"
  }
}
