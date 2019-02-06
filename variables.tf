variable "service_user_name" {
  description = "Service user name."
  default     = "automated-deployer"
}

variable "service_user_policy_count" {
  description = "Whether or not attach an policy to the service user."
  default     = "1"
}

variable "service_user_policy" {
  description = "Policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud."
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

variable "service_user_extra_policy_count" {
  description = "Whether or not attach an extra policy to the service user."
  default     = "0"
}

variable "service_user_extra_policy" {
  description = "Extra policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud."
  default     = ""
}

variable "create_service_user_credentials" {
  description = "Whether to create service credentials or not. CAUTION: enabling this means the secret will be displayed in cleartext in the state file."
  default     = "0"
}
