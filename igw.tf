resource "aws_internet_gateway" "kubernetesfahridd-com" {
  vpc_id = "${aws_vpc.kubernetesfahridd-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}
