provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "user_with_credentials" {
  source = "../../"

  name               = "tf-test"
  credentials_create = 1
}
