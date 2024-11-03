 resource "aws_route_table_association" "route-a" {
  subnet_id = "subnet-059d3d4827a8bcf54"
  route_table_id = "rtb-056456524946be40e"
}

 resource "aws_route_table_association" "route-b" {
  subnet_id = "subnet-0f1515c49c7aea048"
  route_table_id = "rtb-056456524946be40e"
}
