output "vpc_id" {
    value = "${aws_vpc.tc_vpc.id}"
}

output "public_subnet_id" {
    value = "${aws_subnet.tc_pub1_sub.id}"
}

output "private_subnet_id" {
    value = "${aws_subnet.tc_pri1_sub.id}"
}

output "kube_sg_id" {
    value = "${aws_security_group.tc_private_sg.id}"
}

output "key_pair" {
    value = "${aws_key_pair.tc_key.id}"
}
