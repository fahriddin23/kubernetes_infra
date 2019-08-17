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
