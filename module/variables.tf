variable "aws_region" {}
variable "aws_profile" {
  default = "default"
}
data "aws_availability_zones" "available" {}
variable "vpc_cidr" {}
variable "cidrs" {
  type = "map"
}
variable "key_name" {}
variable "public_key_path" {}