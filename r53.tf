resource "aws_route53_record" "directory" {
  zone_id = "${var.hosted_zone_id}"
  name    = "directory"
  type    = "A"
  ttl     = "300"
  records = ["${aws_directory_service_directory.bar.dns_ip_addresses}"]
}

resource "aws_route53_record" "directory-zone" {
  count   = "${length(var.private_subnets)}"
  zone_id = "${var.hosted_zone_id}"
  name    = "directory-${count.index}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_directory_service_directory.bar.dns_ip_addresses[count.index]}"]
}
