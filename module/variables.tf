variable "aws_region" {}
<<<<<<< HEAD

variable "aws_profile" {
  default = "default"
}
=======
variable "aws_profile" {}
>>>>>>> 723fa0cb0442a3c2b1e243e93d5d35c13063eb75
data "aws_availability_zones" "available" {}
variable "vpc_cidr" {}

variable "cidrs" {
  type = "map"
}

variable "key_name" {}
variable "public_key_path" {}
