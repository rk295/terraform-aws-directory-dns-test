resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name = "directory-test"
  }
}

resource "aws_subnet" "private" {
  count = "${length(var.private_subnets)}"

  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_subnets[count.index]}"
  availability_zone = "${element(var.azs, count.index)}"

  tags {
    Name = "directory-test-${count.index}"
  }
}

