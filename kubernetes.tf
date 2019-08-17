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

resource "aws_route53_record" "bastion-kubernetesfahridd-com" {
  name = "bastion.kubernetesfahridd.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-kubernetesfahridd-com.dns_name}"
    zone_id                = "${aws_elb.bastion-kubernetesfahridd-com.zone_id}"
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

resource "aws_security_group" "bastion-elb-kubernetesfahridd-com" {
  name        = "bastion-elb.kubernetesfahridd.com"
  vpc_id      = "${aws_vpc.kubernetesfahridd-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "bastion-elb.kubernetesfahridd.com"
    "kubernetes.io/cluster/kubernetesfahridd.com" = "owned"
  }
}

resource "aws_security_group" "bastion-kubernetesfahridd-com" {
  name        = "bastion.kubernetesfahridd.com"
  vpc_id      = "${aws_vpc.kubernetesfahridd-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                             = "kubernetesfahridd.com"
    Name                                          = "bastion.kubernetesfahridd.com"
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

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-kubernetesfahridd-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesfahridd-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesfahridd-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.bastion-kubernetesfahridd-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
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

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-kubernetesfahridd-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-kubernetesfahridd-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-kubernetesfahridd-com.id}"
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


