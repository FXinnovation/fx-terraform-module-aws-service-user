variable "credentials_create" {
  description = "Whether to create service credentials or not. CAUTION: enabling this means the secret will be displayed in cleartext in the state file."
  default     = false
}

variable "name" {
  description = "Service user name."
  type        = string
}

variable "policy_arns" {
  description = "Policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud."
  default     = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}

variable "tags" {
  description = "Service user tags."
  default     = {}
}
