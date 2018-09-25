variable azs {
  description = "The AZs you want to use in the VPC and Directory"
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable private_subnets {
  description = "The CIDR blocks to assing to the private subnets"
  default     = ["10.0.1.0/24", "10.0.20.0/24"]
}

variable hosted_zone_id {
  description = "The target hosted zone id"
  default     = "Z3F4CMV83R8V4J"
}
