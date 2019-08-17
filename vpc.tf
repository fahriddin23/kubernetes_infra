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


