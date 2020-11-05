provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "random_string" "this" {
  length  = 3
  upper   = false
  special = false
}

module "standard_user" {
  source = "../../"

  name        = "${format("%stf-test", random_string.this.result)}"
  policy_arns = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]

  tags = {
    Test = "test"
  }
}
