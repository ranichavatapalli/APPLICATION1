variable "aws_vpc_cidr"{
}
  resource "aws_vpc" "vpc1{
   cidr_block=var.v_vpc_cidr
}
   resource "aws_subnet" "SN1"{
    vpc_id=aws_vpc_cidr.vpc1.id
    availability_zone="ap_southeast_1a"
}
