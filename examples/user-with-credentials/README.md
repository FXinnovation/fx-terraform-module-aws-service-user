# Service user with credentials for code deployment

Configuration in this directory creates a service user to be used for terraform & other tools cloud deployments.
It also creates credentials along with the user.

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
| region | Region: https://docs.aws.amazon.com/general/latest/gr/rande.html. | string | `"us-east-1"` | no |
| secret\_key | Credentials: AWS secret key. Pass this a variable, never write password in the code. | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| access\_key | The access key of the service user. |
| arn | The ARN assigned by AWS for the service user. |
| policies\_count | Count of policies attached to the service user. |
| secret\_key | The secret key of the service user. CAUTION: this value will appear in the state file: this is probably not what you want. |
| unique\_id | The unique ID assigned by AWS. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
