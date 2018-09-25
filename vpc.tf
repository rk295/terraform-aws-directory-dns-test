resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags {
    Name = "directory-test"
  }

}

resource "aws_subnet" "foo" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "eu-west-2a"
  cidr_block        = "10.0.1.0/24"
      tags {
    Name = "directory-test-a"
  }
}

resource "aws_subnet" "bar" {
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "eu-west-2b"
  cidr_block        = "10.0.2.0/24"
        tags {
    Name = "directory-test-b"
  }
}
