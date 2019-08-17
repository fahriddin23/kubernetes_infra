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

resource "aws_elb" "bastion-kubernetesfahridd-com" {
  name = "bastion-kubernetesfahridd-mf9cn1"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-kubernetesfahridd-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-2a-kubernetesfahridd-com.id}", "${aws_subnet.utility-us-east-2b-kubernetesfahridd-com.id}", "${aws_subnet.utility-us-east-2c-kubernetesfahridd-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "bastion.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}
