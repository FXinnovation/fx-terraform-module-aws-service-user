# Standard service user for code deployment

Configuration in this directory creates a service user to be used for terraform & other tools cloud deployments.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_standard_user"></a> [standard\_user](#module\_standard\_user) | ../../ | n/a |
| <a name="module_user_with_credentials"></a> [user\_with\_credentials](#module\_user\_with\_credentials) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [random_string.standard_user](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [random_string.user_with_credentials](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Credentials: AWS access key. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region: https://docs.aws.amazon.com/general/latest/gr/rande.html. | `string` | `"us-east-1"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Credentials: AWS secret key. Pass this a variable, never write password in the code. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | The access key of the service user. |
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN assigned by AWS for the service user. |
| <a name="output_policies_count"></a> [policies\_count](#output\_policies\_count) | Count of policies attached to the service user. |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want. |
| <a name="output_unique_id"></a> [unique\_id](#output\_unique\_id) | The unique ID assigned by AWS. |
| <a name="output_withcreds_access_key"></a> [withcreds\_access\_key](#output\_withcreds\_access\_key) | The access key of the service user. |
| <a name="output_withcreds_arn"></a> [withcreds\_arn](#output\_withcreds\_arn) | The ARN assigned by AWS for the service user. |
| <a name="output_withcreds_policies_count"></a> [withcreds\_policies\_count](#output\_withcreds\_policies\_count) | Count of policies attached to the service user. |
| <a name="output_withcreds_secret_key"></a> [withcreds\_secret\_key](#output\_withcreds\_secret\_key) | The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want. |
| <a name="output_withcreds_unique_id"></a> [withcreds\_unique\_id](#output\_withcreds\_unique\_id) | The unique ID assigned by AWS. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
