# Terraform module: bootstrap service user

Bootstrap terraform AWS service user.

This module should be used in a client-specific bootstrap terraform module.

## Notes

* Due to multiple layer of interpolation, terraform (as for 0.11.* versions) is not able to handle dynamic counts.
This means this module ask for extra variables static counts values; which is duplicated information.
For more information: https://github.com/hashicorp/terraform/issues/12466

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| credentials\_create | Whether to create service credentials or not. CAUTION: enabling this means the secret will be displayed in cleartext in the state file. | string | `"false"` | no |
| name | Service user name. | string | n/a | yes |
| policy\_arns | Policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud. | list | `[ "arn:aws:iam::aws:policy/AdministratorAccess" ]` | no |
| tags | Service user tags. | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| access\_key | The access key of the service user. |
| arn | The ARN assigned by AWS for the service user. |
| policies\_count | Count of policies attached to the service user. |
| secret\_key | The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want. |
| unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
