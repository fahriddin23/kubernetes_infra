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


