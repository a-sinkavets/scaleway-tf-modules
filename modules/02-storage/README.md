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
| [scaleway_block_volume.data](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/resources/block_volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to apply to the instance. | `map(string)` | n/a | yes |
| <a name="input_iops"></a> [iops](#input\_iops) | The IOPS configuration for the block volume. | `number` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway Project ID (SCW\_DEFAULT\_PROJECT\_ID) | `string` | n/a | yes |
| <a name="input_size_in_gb"></a> [size\_in\_gb](#input\_size\_in\_gb) | The size of the block volume in GB. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the block volume. |
<!-- END_TF_DOCS -->