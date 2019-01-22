output "iam_service_user_arn" {
  description = "The key ARN for the S3 bucket for terraform state files."
  value       = "${module.service_user_bootstrap.iam_service_user_arn}"
}

output "iam_service_user_access_key" {
  description = "The access key of the service user."
  value       = "${module.service_user_bootstrap.iam_service_user_access_key}"
}

output "iam_service_user_secret_key" {
  description = "The key ARN for the S3 bucket for terraform state files."
  value       = "${module.service_user_bootstrap.iam_service_user_secret_key}"
}
