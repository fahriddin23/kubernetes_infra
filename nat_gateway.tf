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