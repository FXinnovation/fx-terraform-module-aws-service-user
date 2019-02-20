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
| create\_service\_user\_credentials | Whether to create service credentials or not. CAUTION: enabling this means the secret will be displayed in cleartext in the state file. | string | `"0"` | no |
| service\_user\_extra\_policy | Extra policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud. | string | `""` | no |
| service\_user\_extra\_policy\_count | Whether or not attach an extra policy to the service user. | string | `"0"` | no |
| service\_user\_name | Service user name. | string | `"automated-deployer"` | no |
| service\_user\_policy | Policy to attach to service user. This policy should give just the needed access for the service user to administrate your cloud. | string | `"arn:aws:iam::aws:policy/AdministratorAccess"` | no |
| service\_user\_policy\_count | Whether or not attach an policy to the service user. | string | `"1"` | no |
| service\_user\_tags | Service user tags. | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_service\_user\_access\_key | The access key of the service user. |
| iam\_service\_user\_arn | The key ARN for the S3 bucket for terraform state files. |
| iam\_service\_user\_secret\_key | The key ARN for the S3 bucket for terraform state files. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
