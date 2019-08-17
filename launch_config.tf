resource "aws_launch_configuration" "bastions-kubernetesfahridd-com" {
  name_prefix                 = "bastions.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.bastion-kubernetesfahridd-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2a-masters-kubernetesfahridd-com" {
  name_prefix                 = "master-us-east-2a.masters.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2a.masters.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2b-masters-kubernetesfahridd-com" {
  name_prefix                 = "master-us-east-2b.masters.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2b.masters.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2c-masters-kubernetesfahridd-com" {
  name_prefix                 = "master-us-east-2c.masters.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2c.masters.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesfahridd-com" {
  name_prefix                 = "nodes.kubernetesfahridd.com-"
  image_id                    = "ami-0dd3b1702120579bd"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesfahridd-com-b6f7b12c407cddada9185d57f00987ba.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesfahridd-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesfahridd-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesfahridd.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}
