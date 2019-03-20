output "arn" {
  description = "The ARN assigned by AWS for the service user."
  value       = "${module.user_with_credentials.arn}"
}

output "access_key" {
  description = "The access key of the service user."
  value       = "${module.user_with_credentials.access_key}"
}

output "policies_count" {
  description = "Count of policies attached to the service user."
  value       = "${length(var.policies)}"
}

output "secret_key" {
  description = "The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want."
  value       = "${module.user_with_credentials.secret_key}"
  sensitive   = true
}

output "unique_id" {
  description = "The unique ID assigned by AWS."
  value       = "${module.user_with_credentials.unique_id}"
}
