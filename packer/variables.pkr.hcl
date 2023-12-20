variable "project" {
  type = string
  default = "shopping"
}

variable "env" {
  type = string
  default = "dev"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
  image-name = "${var.project}-${var.env}-${local.image-timestamp}"
}

variable "ami" {
  type = string
  default = "ami-02e94b011299ef128"
}
