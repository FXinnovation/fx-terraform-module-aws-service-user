resource "aws_iam_user" "service_user" {
  name = "${var.service_user_name}"
}

resource "aws_iam_user_policy_attachment" "service_user_attachment" {
  user       = "${aws_iam_user.service_user.name}"
  policy_arn = "${var.service_user_policy}"
}

resource "aws_iam_user_policy_attachment" "service_user_attachment_extra" {
  user       = "${aws_iam_user.service_user.name}"
  policy_arn = "${var.service_user_extra_policy}"
}

resource "aws_iam_access_key" "service_user" {
  count = "${var.create_service_user_credentials > 0 ? 1 : 0}"
  user  = "${aws_iam_user.service_user.name}"
}
