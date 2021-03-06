# Terraform module: bootstrap service user

Bootstrap terraform AWS service user.

This module should be used in a client-specific bootstrap terraform module.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| credentials\_create | Whether to create service credentials or not. CAUTION: enabling this means the secret will be displayed in cleartext in the state file. | `bool` | `false` | no |
| name | Service user name. | `string` | n/a | yes |
| policy\_arns | Policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud. | `list` | <pre>[<br>  "arn:aws:iam::aws:policy/AdministratorAccess"<br>]</pre> | no |
| tags | Service user tags. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| access\_key | The access key of the service user. |
| arn | The ARN assigned by AWS for the service user. |
| policies\_count | Count of policies attached to the service user. |
| secret\_key | The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want. |
| unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
