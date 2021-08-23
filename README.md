# Terraform module: bootstrap service user

Bootstrap terraform AWS service user.

This module should be used in a client-specific bootstrap terraform module.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_credentials_create"></a> [credentials\_create](#input\_credentials\_create) | Whether to create service credentials or not. CAUTION: enabling this means the secret will be displayed in cleartext in the state file. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Service user name. | `string` | n/a | yes |
| <a name="input_policy_arns"></a> [policy\_arns](#input\_policy\_arns) | Policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud. | `list` | <pre>[<br>  "arn:aws:iam::aws:policy/AdministratorAccess"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Service user tags. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | The access key of the service user. |
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN assigned by AWS for the service user. |
| <a name="output_policies_count"></a> [policies\_count](#output\_policies\_count) | Count of policies attached to the service user. |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want. |
| <a name="output_unique_id"></a> [unique\_id](#output\_unique\_id) | The unique ID assigned by AWS. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
