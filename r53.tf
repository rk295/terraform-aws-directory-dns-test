resource "aws_route53_record" "directory" {
  zone_id = "Z3F4CMV83R8V4J" # Hardcoded to internal.
  name    = "directory"
  type    = "A"
  ttl     = "300"
  records = ["${aws_directory_service_directory.bar.dns_ip_addresses}"]
}


resource "aws_route53_record" "directory-zone" {
 
  count = "${length(aws_directory_service_directory.bar.dns_ip_addresses)}"

  zone_id = "Z3F4CMV83R8V4J" # Hardcoded to internal.
  name    = "directory-${count.index}"
#   name = "foo"
  type    = "A"
  ttl     = "300"
  records = ["${aws_directory_service_directory.bar.dns_ip_addresses.count.index}"]
}