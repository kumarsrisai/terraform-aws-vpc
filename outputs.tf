output "vpc_id" {
  value = aws_vpc.tokyo-vpc.id
}

output "cidr_block" {
  value = aws_vpc.tokyo-vpc.cidr_block
}

output "vpc_fe_subnet" {
  value = aws_subnet.private[0]
  
}

output "vpc_be_subnet" {
  value = aws_subnet.private[1]
}

output "vpc_ig" {
  value = aws_internet_gateway.tokyo-igw.id
}

output "vpc_rt" {
  value = aws_route_table.tokyo-public-route.id
}

output "vpc_nacl_fe" {
  value = aws_network_acl.tokyo-nacl[0].id
}

output "vpc_nacl_be" {
  value = aws_network_acl.tokyo-nacl[1].id
}

output "vpc_fe_sg" {
  value = aws_security_group.tokyo-securitygroup[0].id
}

output "vpc_be_sg" {
  value = aws_security_group.tokyo-securitygroup[1].id
}

output "vpc_az" {
  value = data.aws_availability_zones.available.names[*] 
}
