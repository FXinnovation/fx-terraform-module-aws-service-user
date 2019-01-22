# Standard service user for code deployement

Configuration in this directory creates a service user to be used for terraform & other tools cloud deployements.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| access\_key | Credentials: AWS access key. | string | n/a | yes |
| region | Region. | string | `"us-east-1"` | no |
| secret\_key | Credentials: AWS secret key. Pass this a variable, never write password in the code. | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| iam\_service\_user\_access\_key | The access key of the service user. |
| iam\_service\_user\_arn | The key ARN for the S3 bucket for terraform state files. |
| iam\_service\_user\_secret\_key | The key ARN for the S3 bucket for terraform state files. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
