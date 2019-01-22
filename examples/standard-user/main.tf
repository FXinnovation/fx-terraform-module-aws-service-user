provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "service_user_bootstrap" {
  source = "../../"

  service_user_name         = "${var.region}"
  service_user_policy       = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  service_user_extra_policy = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}
