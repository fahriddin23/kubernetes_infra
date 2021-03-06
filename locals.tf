locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-kubernetesfahridd-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-kubernetesfahridd-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-kubernetesfahridd-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-kubernetesfahridd-com.name}"
  cluster_name                      = "kubernetesfahridd.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-east-2a-masters-kubernetesfahridd-com.id}", "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesfahridd-com.id}", "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesfahridd-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetesfahridd-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetesfahridd-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetesfahridd-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetesfahridd-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-east-2a-kubernetesfahridd-com.id}", "${aws_subnet.us-east-2b-kubernetesfahridd-com.id}", "${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetesfahridd-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetesfahridd-com.name}"
  region                            = "us-east-2"
  route_table_private-us-east-2a_id = "${aws_route_table.private-us-east-2a-kubernetesfahridd-com.id}"
  route_table_private-us-east-2b_id = "${aws_route_table.private-us-east-2b-kubernetesfahridd-com.id}"
  route_table_private-us-east-2c_id = "${aws_route_table.private-us-east-2c-kubernetesfahridd-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetesfahridd-com.id}"
  subnet_us-east-2a_id              = "${aws_subnet.us-east-2a-kubernetesfahridd-com.id}"
  subnet_us-east-2b_id              = "${aws_subnet.us-east-2b-kubernetesfahridd-com.id}"
  subnet_us-east-2c_id              = "${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"
  subnet_utility-us-east-2a_id      = "${aws_subnet.utility-us-east-2a-kubernetesfahridd-com.id}"
  subnet_utility-us-east-2b_id      = "${aws_subnet.utility-us-east-2b-kubernetesfahridd-com.id}"
  subnet_utility-us-east-2c_id      = "${aws_subnet.utility-us-east-2c-kubernetesfahridd-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetesfahridd-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetesfahridd-com.id}"
}
