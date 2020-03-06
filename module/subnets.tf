resource "aws_subnet" "tc_pub1_sub" {
  vpc_id                  = "${aws_vpc.tc_vpc.id}"
  cidr_block              = "${var.cidrs["pub1"]}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[0]}"

  tags = {
    Name = "tc_pub1"
  }
}

resource "aws_subnet" "tc_pub2_sub" {
  vpc_id                  = "${aws_vpc.tc_vpc.id}"
  cidr_block              = "${var.cidrs["pub2"]}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[1]}"

  tags = {
    Name = "tc_pub2"
  }
}

resource "aws_subnet" "tc_pri1_sub" {
  vpc_id                  = "${aws_vpc.tc_vpc.id}"
  cidr_block              = "${var.cidrs["pri1"]}"
  map_public_ip_on_launch = false
  availability_zone       = "${data.aws_availability_zones.available.names[0]}"

  tags = {
    Name = "tc_pri1"
  }
}

resource "aws_subnet" "tc_pri2_sub" {
  vpc_id                  = "${aws_vpc.tc_vpc.id}"
  cidr_block              = "${var.cidrs["pri2"]}"
  map_public_ip_on_launch = false
  availability_zone       = "${data.aws_availability_zones.available.names[1]}"

  tags = {
    Name = "tc_pri2"
  }
}
