resource "aws_autoscaling_attachment" "bastions-kubernetesfahridd-com" {
  elb                    = "${aws_elb.bastion-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-kubernetesfahridd-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2a-masters-kubernetesfahridd-com" {
  elb                    = "${aws_elb.api-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2a-masters-kubernetesfahridd-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2b-masters-kubernetesfahridd-com" {
  elb                    = "${aws_elb.api-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2b-masters-kubernetesfahridd-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2c-masters-kubernetesfahridd-com" {
  elb                    = "${aws_elb.api-kubernetesfahridd-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2c-masters-kubernetesfahridd-com.id}"
}
