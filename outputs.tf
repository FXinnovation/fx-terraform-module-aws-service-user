output "iam_service_user_arn" {
  description = "The key ARN for the S3 bucket for terraform state files."
  value       = "${aws_iam_user.service_user.arn}"
}

output "iam_service_user_access_key" {
  description = "The access key of the service user."
  value       = "${aws_iam_access_key.service_user.*.id}"
}

output "iam_service_user_secret_key" {
  description = "The key ARN for the S3 bucket for terraform state files."
  value       = "${aws_iam_access_key.service_user.*.secret}"
}
