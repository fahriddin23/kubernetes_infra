locals = {
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

provider "aws" {
  region = "us-east-2"
}

resource "aws_autoscaling_attachment" "master-us-east-2a-masters-kubernetesfahridd-com" {
  elb                    = "${aws_elb.api-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2a-masters-kubernetesfahridd-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2b-masters-kubernetesfahridd-com" {
  elb                    = "${aws_elb.api-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesfahridd-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2c-masters-kubernetesfahridd-com" {
  elb                    = "${aws_elb.api-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesfahridd-com.id}"
}

resource "aws_autoscaling_group" "master-us-east-2a-masters-kubernetesfahridd-com" {
  name                 = "master-us-east-2a.masters.kubernetesfahridd.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2a-masters-kubernetesfahridd-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2a-kubernetesfahridd-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2a.masters.kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2b-masters-kubernetesfahridd-com" {
  name                 = "master-us-east-2b.masters.kubernetesfahridd.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2b-masters-kubernetesfahridd-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2b-kubernetesfahridd-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2b.masters.kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2c-masters-kubernetesfahridd-com" {
  name                 = "master-us-east-2c.masters.kubernetesfahridd.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2c-masters-kubernetesfahridd-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2c.masters.kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-kubernetesfahridd-com" {
  name                 = "nodes.kubernetesfahridd.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetesfahridd-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-east-2a-kubernetesfahridd-com.id}", "${aws_subnet.us-east-2b-kubernetesfahridd-com.id}", "${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetesfahridd.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-kubernetesfahridd-com" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "a.etcd-events.kubernetesfahridd.com"
    "k8s.io/etcd/events"                          = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetesfahridd-com" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "a.etcd-main.kubernetesfahridd.com"
    "k8s.io/etcd/main"                            = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetesfahridd-com" {
  availability_zone = "us-east-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "b.etcd-events.kubernetesfahridd.com"
    "k8s.io/etcd/events"                          = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetesfahridd-com" {
  availability_zone = "us-east-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "b.etcd-main.kubernetesfahridd.com"
    "k8s.io/etcd/main"                            = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetesfahridd-com" {
  availability_zone = "us-east-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "c.etcd-events.kubernetesfahridd.com"
    "k8s.io/etcd/events"                          = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetesfahridd-com" {
  availability_zone = "us-east-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "c.etcd-main.kubernetesfahridd.com"
    "k8s.io/etcd/main"                            = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_eip" "us-east-2a-kubernetesfahridd-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2a.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_eip" "us-east-2b-kubernetesfahridd-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2b.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_eip" "us-east-2c-kubernetesfahridd-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2c.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_elb" "api-kubernetesfahridd-com" {
  name = "api-kubernetesfahridd-com-oqvst7"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetesfahridd-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-2a-kubernetesfahridd-com.id}", "${aws_subnet.utility-us-east-2b-kubernetesfahridd-com.id}", "${aws_subnet.utility-us-east-2c-kubernetesfahridd-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "api.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-kubernetesfahridd-com" {
  name = "masters.kubernetesfahridd.com"
  role = "${aws_iam_role.masters-kubernetesfahridd-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesfahridd-com" {
  name = "nodes.kubernetesfahridd.com"
  role = "${aws_iam_role.nodes-kubernetesfahridd-com.name}"
}

resource "aws_iam_role" "masters-kubernetesfahridd-com" {
  name               = "masters.kubernetesfahridd.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesfahridd.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesfahridd-com" {
  name               = "nodes.kubernetesfahridd.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesfahridd.com_policy")}"
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

resource "aws_internet_gateway" "kubernetesfahridd-com" {
  vpc_id = "${aws_vpc.kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba" {
  key_name   = "kubernetes.kubernetesfahridd.com-b6:f7:b1:2c:40:7c:dd:ad:a9:18:5d:57:f0:09:87:ba"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesfahridd.com-b6f7b12c407cddada9185d57f00987ba_public_key")}"
}

resource "aws_launch_configuration" "master-us-east-2a-masters-kubernetesfahridd-com" {
  name_prefix                 = "master-us-east-2a.masters.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2a.masters.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2b-masters-kubernetesfahridd-com" {
  name_prefix                 = "master-us-east-2b.masters.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2b.masters.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2c-masters-kubernetesfahridd-com" {
  name_prefix                 = "master-us-east-2c.masters.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2c.masters.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesfahridd-com" {
  name_prefix                 = "nodes.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "us-east-2a-kubernetesfahridd-com" {
  allocation_id = "${aws_eip.us-east-2a-kubernetesfahridd-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2a-kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2a.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-2b-kubernetesfahridd-com" {
  allocation_id = "${aws_eip.us-east-2b-kubernetesfahridd-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2b-kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2b.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-2c-kubernetesfahridd-com" {
  allocation_id = "${aws_eip.us-east-2c-kubernetesfahridd-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2c-kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2c.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetesfahridd-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetesfahridd-com.id}"
}

resource "aws_route" "private-us-east-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2a-kubernetesfahridd-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2a-kubernetesfahridd-com.id}"
}

resource "aws_route" "private-us-east-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2b-kubernetesfahridd-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2b-kubernetesfahridd-com.id}"
}

resource "aws_route" "private-us-east-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2c-kubernetesfahridd-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2c-kubernetesfahridd-com.id}"
}

resource "aws_route53_record" "api-kubernetesfahridd-com" {
  name = "api.kubernetesfahridd.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesfahridd-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesfahridd-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z1UEGSIL1LNKZ1"
}

resource "aws_route53_zone_association" "Z1UEGSIL1LNKZ1" {
  zone_id = "/hostedzone/Z1UEGSIL1LNKZ1"
  vpc_id  = "${aws_vpc.kubernetesfahridd-com.id}"
}

resource "aws_route_table" "kubernetesfahridd-com" {
  vpc_id = "${aws_vpc.kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/kops/role"                     = "public"
  }
}

resource "aws_route_table" "private-us-east-2a-kubernetesfahridd-com" {
  vpc_id = "${aws_vpc.kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "private-us-east-2a.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-2a"
  }
}

resource "aws_route_table" "private-us-east-2b-kubernetesfahridd-com" {
  vpc_id = "${aws_vpc.kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "private-us-east-2b.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-2b"
  }
}

resource "aws_route_table" "private-us-east-2c-kubernetesfahridd-com" {
  vpc_id = "${aws_vpc.kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "private-us-east-2c.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-east-2c"
  }
}

resource "aws_route_table_association" "private-us-east-2a-kubernetesfahridd-com" {
  subnet_id      = "${aws_subnet.us-east-2a-kubernetesfahridd-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2a-kubernetesfahridd-com.id}"
}

resource "aws_route_table_association" "private-us-east-2b-kubernetesfahridd-com" {
  subnet_id      = "${aws_subnet.us-east-2b-kubernetesfahridd-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2b-kubernetesfahridd-com.id}"
}

resource "aws_route_table_association" "private-us-east-2c-kubernetesfahridd-com" {
  subnet_id      = "${aws_subnet.us-east-2c-kubernetesfahridd-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2c-kubernetesfahridd-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2a-kubernetesfahridd-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2a-kubernetesfahridd-com.id}"
  route_table_id = "${aws_route_table.kubernetesfahridd-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2b-kubernetesfahridd-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2b-kubernetesfahridd-com.id}"
  route_table_id = "${aws_route_table.kubernetesfahridd-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2c-kubernetesfahridd-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2c-kubernetesfahridd-com.id}"
  route_table_id = "${aws_route_table.kubernetesfahridd-com.id}"
}

resource "aws_security_group" "api-elb-kubernetesfahridd-com" {
  name        = "api-elb.kubernetesfahridd.com"
  vpc_id      = "${aws_vpc.kubernetesfahridd-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "api-elb.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetesfahridd-com" {
  name        = "masters.kubernetesfahridd.com"
  vpc_id      = "${aws_vpc.kubernetesfahridd-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "masters.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetesfahridd-com" {
  name        = "nodes.kubernetesfahridd.com"
  vpc_id      = "${aws_vpc.kubernetesfahridd-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "nodes.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetesfahridd-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesfahridd-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetesfahridd-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesfahridd-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-east-2a-kubernetesfahridd-com" {
  vpc_id            = "${aws_vpc.kubernetesfahridd-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-east-2a"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2a.kubernetesfahridd.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-east-2b-kubernetesfahridd-com" {
  vpc_id            = "${aws_vpc.kubernetesfahridd-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-east-2b"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2b.kubernetesfahridd.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-east-2c-kubernetesfahridd-com" {
  vpc_id            = "${aws_vpc.kubernetesfahridd-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-east-2c"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "us-east-2c.kubernetesfahridd.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "utility-us-east-2a-kubernetesfahridd-com" {
  vpc_id            = "${aws_vpc.kubernetesfahridd-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-east-2a"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "utility-us-east-2a.kubernetesfahridd.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-east-2b-kubernetesfahridd-com" {
  vpc_id            = "${aws_vpc.kubernetesfahridd-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-east-2b"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "utility-us-east-2b.kubernetesfahridd.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-east-2c-kubernetesfahridd-com" {
  vpc_id            = "${aws_vpc.kubernetesfahridd-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-east-2c"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "utility-us-east-2c.kubernetesfahridd.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_vpc" "kubernetesfahridd-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetesfahridd-com" {
  domain_name         = "us-east-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetesfahridd-com" {
  vpc_id          = "${aws_vpc.kubernetesfahridd-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetesfahridd-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
