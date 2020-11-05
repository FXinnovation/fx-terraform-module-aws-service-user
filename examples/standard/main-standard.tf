resource "random_string" "standard_user" {
  length  = 3
  upper   = false
  special = false
}

module "standard_user" {
  source = "../../"

  name        = "${format("%stf-test", random_string.standard_user.result)}"
  policy_arns = ["arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]

  tags = {
    Test = "test"
  }
}
