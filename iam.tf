resource "aws_iam_instance_profile" "bastions-kubernetesfahridd-com" {
  name = "bastions.kubernetesfahridd.com"
  role = "${aws_iam_role.bastions-kubernetesfahridd-com.name}"
}

resource "aws_iam_instance_profile" "masters-kubernetesfahridd-com" {
  name = "masters.kubernetesfahridd.com"
  role = "${aws_iam_role.masters-kubernetesfahridd-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesfahridd-com" {
  name = "nodes.kubernetesfahridd.com"
  role = "${aws_iam_role.nodes-kubernetesfahridd-com.name}"
}

resource "aws_iam_role" "bastions-kubernetesfahridd-com" {
  name               = "bastions.kubernetesfahridd.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.kubernetesfahridd.com_policy")}"
}

resource "aws_iam_role" "masters-kubernetesfahridd-com" {
  name               = "masters.kubernetesfahridd.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesfahridd.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesfahridd-com" {
  name               = "nodes.kubernetesfahridd.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesfahridd.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-kubernetesfahridd-com" {
  name   = "bastions.kubernetesfahridd.com"
  role   = "${aws_iam_role.bastions-kubernetesfahridd-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.kubernetesfahridd.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetesfahridd-com" {
  name   = "masters.kubernetesfahridd.com"
  role   = "${aws_iam_role.masters-kubernetesfahridd-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetesfahridd.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetesfahridd-com" {
  name   = "nodes.kubernetesfahridd.com"
  role   = "${aws_iam_role.nodes-kubernetesfahridd-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetesfahridd.com_policy")}"
}