output "PublicIP_East_Frontend" {
  #value = aws_instance.instance.*.public_ip
  #value = "${aws_instances.aws_instance.instance.*.public_ip}"
  value = "${module.frontend.aws_instance.instance.*.public_ip}"

}
