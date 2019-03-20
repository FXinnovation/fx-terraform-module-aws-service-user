provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "standard_user" {
  source = "../../"

  name        = "tf-test"
  policy_arns = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]

  tags = {
    Test = "test"
  }
}
