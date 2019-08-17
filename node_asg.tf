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
