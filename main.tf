resource "aws_iam_user" "this" {
  name = var.name

  tags = merge(
    {
      "terraform" = "true"
    },
    var.tags,
  )
}

resource "aws_iam_user_policy_attachment" "this" {
  count = length(var.policy_arns)

  user       = aws_iam_user.this.name
  policy_arn = element(var.policy_arns, count.index)
}

resource "aws_iam_access_key" "this" {
  count = var.credentials_create ? 1 : 0

  user = aws_iam_user.this.name
}
