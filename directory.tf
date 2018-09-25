resource "aws_directory_service_directory" "bar" {
  name     = "corp.notexample.com"
  password = "SuperSecretPassw0rd"
  edition  = "Standard"
  type     = "MicrosoftAD"

  vpc_settings {
    vpc_id     = "${aws_vpc.main.id}"
    subnet_ids = ["${aws_subnet.private.*.id}"]
  }

  tags {
    Project = "directory-test"
  }
}
