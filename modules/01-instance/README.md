<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | >=2.60.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_scaleway"></a> [scaleway](#provider\_scaleway) | 2.60.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [scaleway_instance_server.web](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/instance_server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_volume_id"></a> [additional\_volume\_id](#input\_additional\_volume\_id) | ID of an existing block volume to attach to the instance. | `string` | `null` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to apply to the instance. | `map(string)` | n/a | yes |
| <a name="input_instance_image"></a> [instance\_image](#input\_instance\_image) | Image of the instance to create. | `string` | `"ubuntu_jammy"` | no |
| <a name="input_instance_security_group_id"></a> [instance\_security\_group\_id](#input\_instance\_security\_group\_id) | ID of the security group to associate with the instance. | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Type of the instance to create. | `string` | `"STARDUST1-S"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway Project ID (SCW\_DEFAULT\_PROJECT\_ID) | `string` | n/a | yes |
| <a name="input_public_ip_id"></a> [public\_ip\_id](#input\_public\_ip\_id) | ID of an existing public IP to attach to the instance. | `string` | `null` | no |
| <a name="input_root_volume_size_in_gb"></a> [root\_volume\_size\_in\_gb](#input\_root\_volume\_size\_in\_gb) | Size of the root volume in GB. | `number` | `20` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | IP of server |
<!-- END_TF_DOCS -->