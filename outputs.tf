output "ips" {
  value = "${aws_directory_service_directory.bar.dns_ip_addresses}"
}