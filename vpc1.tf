variable "aws_vpc_cidr"{
}
/* changes done by seshi*/
 variable "aws_sn_cidr"{
   type=list
}
  variable "aws_azs"{
     type=list
}

  resource "aws_vpc" "vpc1{
   cidr_block=var.v_vpc_cidr
}
   resource "aws_subnet" "SN1"{
     count=length(var.v_sn_cidr)
     vpc_id=aws_vpc_cidr.vpc1.id
      cidr_block=var.v_sn_cidr[count.index]
     availability_zone=var.v_azs[count.index]
   tags={
   Name="SN1"
}
}
