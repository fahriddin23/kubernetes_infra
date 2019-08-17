resource "aws_key_pair" "kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba" {
  key_name   = "kubernetes.kubernetesfahridd.com-b6:f7:b1:2c:40:7c:dd:ad:a9:18:5d:57:f0:09:87:ba"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesfahridd.com-b6f7b12c407cddada9185d57f00987ba_public_key")}"
}