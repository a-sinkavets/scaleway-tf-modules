<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | >=2.60.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [scaleway_instance_security_group.security_group](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/instance_security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to apply to the instance. | `map(string)` | n/a | yes |
| <a name="input_inbound_rules"></a> [inbound\_rules](#input\_inbound\_rules) | List of inbound rules for the security group | <pre>list(object({<br/>    action   = string<br/>    port     = string<br/>    ip_range = string<br/>  }))</pre> | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway Project ID (SCW\_DEFAULT\_PROJECT\_ID) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the security group. |
<!-- END_TF_DOCS -->