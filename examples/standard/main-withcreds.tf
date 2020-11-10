resource "random_string" "user_with_credentials" {
  length  = 3
  upper   = false
  special = false
}

module "user_with_credentials" {
  source = "../../"

  name               = format("%stf-test", random_string.user_with_credentials.result)
  credentials_create = true
}
