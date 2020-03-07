variable "aws_region" {}
variable "aws_profile" {
  default = "default"
}
variable "aws_profile" {}
data "aws_availability_zones" "available" {}
variable "vpc_cidr" {}
variable "cidrs" {
  type = "map"
}
variable "key_name" {}
variable "public_key_path" {}
