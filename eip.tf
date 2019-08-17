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
