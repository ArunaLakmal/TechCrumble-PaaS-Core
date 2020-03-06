#Public Security Group
resource "aws_security_group" "tc_public_sg" {
  name        = "tc_public_sg"
  description = "Public Access"
  vpc_id      = "${aws_vpc.tc_vpc.id}"

  #Allow SSH

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Http Allow
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Out going all allow
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#Private Security Group

resource "aws_security_group" "tc_private_sg" {
  name        = "tc_private_sg"
  description = "Access for Private Instances"
  vpc_id      = "${aws_vpc.tc_vpc.id}"

  #VPC Local Traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}