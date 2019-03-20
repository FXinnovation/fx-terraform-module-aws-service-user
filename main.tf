resource "aws_iam_user" "this" {
  name = "${var.service_user_name}"

  tags = "${merge(map("terraform", "true"), var.service_user_tags)}"
}

resource "aws_iam_user_policy_attachment" "this" {
  count = "${length(var.policy_arns)}"

  user       = "${aws_iam_user.service_user.name}"
  policy_arn = "${element(var.policy_arns, count.index)}"
}

resource "aws_iam_access_key" "this" {
  count = "${var.user_credentials_create ? 1 : 0}"

  user = "${aws_iam_user.service_user.name}"
}
