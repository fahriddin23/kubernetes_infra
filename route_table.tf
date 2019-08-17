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
