variable "region" {
  description = "Region: https://docs.aws.amazon.com/general/latest/gr/rande.html."
  default     = "us-east-1"
}

variable "access_key" {
  description = "Credentials: AWS access key."
  type        = string
}

variable "secret_key" {
  description = "Credentials: AWS secret key. Pass this a variable, never write password in the code."
  type        = string
}
