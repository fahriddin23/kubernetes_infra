output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-kubernetesfahridd-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-kubernetesfahridd-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-kubernetesfahridd-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-kubernetesfahridd-com.name}"
}

output "cluster_name" {
  value = "kubernetesfahridd.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-east-2a-masters-kubernetesfahridd-com.id}", "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesfahridd-com.id}", "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesfahridd-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetesfahridd-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetesfahridd-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetesfahridd-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetesfahridd-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-east-2a-kubernetesfahridd-com.id}", "${aws_subnet.us-east-2b-kubernetesfahridd-com.id}", "${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetesfahridd-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetesfahridd-com.name}"
}

output "region" {
  value = "us-east-2"
}

output "route_table_private-us-east-2a_id" {
  value = "${aws_route_table.private-us-east-2a-kubernetesfahridd-com.id}"
}

output "route_table_private-us-east-2b_id" {
  value = "${aws_route_table.private-us-east-2b-kubernetesfahridd-com.id}"
}

output "route_table_private-us-east-2c_id" {
  value = "${aws_route_table.private-us-east-2c-kubernetesfahridd-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetesfahridd-com.id}"
}

output "subnet_us-east-2a_id" {
  value = "${aws_subnet.us-east-2a-kubernetesfahridd-com.id}"
}

output "subnet_us-east-2b_id" {
  value = "${aws_subnet.us-east-2b-kubernetesfahridd-com.id}"
}

output "subnet_us-east-2c_id" {
  value = "${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"
}

output "subnet_utility-us-east-2a_id" {
  value = "${aws_subnet.utility-us-east-2a-kubernetesfahridd-com.id}"
}

output "subnet_utility-us-east-2b_id" {
  value = "${aws_subnet.utility-us-east-2b-kubernetesfahridd-com.id}"
}

output "subnet_utility-us-east-2c_id" {
  value = "${aws_subnet.utility-us-east-2c-kubernetesfahridd-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetesfahridd-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetesfahridd-com.id}"
}