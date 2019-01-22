provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

module "service_user_bootstrap" {
  source = "../../"

  service_user_name = "${var.region}"
  create_service_user_credentials = 1
}
