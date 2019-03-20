output "arn" {
  description = "The ARN assigned by AWS for the service user."
  value       = "${aws_iam_user.service_user.arn}"
}

output "access_key" {
  description = "The access key of the service user."
  value       = "${aws_iam_access_key.service_user.*.id}"
}

output "policies_count" {
  description = "Count of policies attached to the service user."
  value       = "${length(var.policy_arns)}"
}

output "secret_key" {
  description = "The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want."
  value       = "${aws_iam_access_key.service_user.*.secret}"
  sensitive   = true
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = "${aws_iam_user.service_user.arn}"
}
