module "cap_ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = "${var.name}"
  instance_count              = "${var.instance_count}"
  ami                         = "ami-0b714f9b34964c255"
  instance_type               = "${var.instance_type}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  subnet_id                   = "${var.subnet_id}"
  vpc_security_group_ids      = "${var.vpc_security_group_ids}"
  key_name                    = "${var.key_name}"
  ebs_optimized               = "${replace(var.instance_type, "/^t2\\..*$/", "1") != "1"}"
  associate_public_ip_address = true
  user_data                   = "${var.user_data}"

  root_block_device = [
    {
      volume_type = "gp2"
      volume_size = 64
    }
  ]

  tags = {
    sandbox = "cap"
  }

  volume_tags = {
    sandbox = "cap"
  }
}
