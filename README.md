# scaleway-tf-modules
Terraform modules for Scaleway Cloud Terraform provider learning.

## Module Architecture
This project is structured to provide reusable Terraform modules for managing resources on Scaleway Cloud. Each module is designed to handle a specific resource or set of related resources, ensuring modularity and ease of use. The architecture follows these principles:
- **Reusability**: Modules can be used across multiple projects.
- **Simplicity**: Each module focuses on a single responsibility.
- **Scalability**: Modules are designed to scale with your infrastructure needs.

### Directory Structure
- `modules/`: Contains individual Terraform modules.
- `examples/`: [Not implemented yet] Provides usage examples for the modules.
- `tests/`: [Not implemented yet] Includes test configurations for validating module functionality.

### Prerequisites
Before using the modules, ensure you have:
1. Created a Scaleway account and access API keys
2. Authentication configured using one of these methods:
    - Create `scaleway.auto.tfvars` file with your credentials
    ```hcl
    access_key      = "your-access-key"
    secret_key      = "your-secret-key"
    organization_id = "your-organization-id"
    project_id      = "your-project-id"
    state_bucket    = "scaleway-bucket-name"
    state_key       = "scaleway-bucket-key"
    sc_zone         = "scaleway-default-zone"
    sc_region       = "scaleway-default-region"
    ```

    - Set environment variables locally or in CI/CD workflow as GHA secrets

    ```sh
    SCW_ACCESS_KEY="your-access-key"
    SCW_SECRET_KEY="your-secret-key"
    SCW_ORGANIZATION_ID="your-organization-id"
    SCW_DEFAULT_PROJECT_ID="your-project-id"
    STATE_BUCKET="scaleway-bucket-name"
    STATE_KEY="scaleway-bucket-key"
    SCW_DEFAULT_ZONE="scaleway-default-zone"
    SCW_DEFAULT_REGION="scaleway-default-region"
    ```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_scaleway"></a> [scaleway](#requirement\_scaleway) | 2.60.5 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_block_volume"></a> [block\_volume](#module\_block\_volume) | ./modules/02-storage | n/a |
| <a name="module_instance"></a> [instance](#module\_instance) | ./modules/01-instance | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/03-network | n/a |
| <a name="module_security"></a> [security](#module\_security) | ./modules/04-security | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | Scaleway Access Key (SCW\_ACCESS\_KEY) | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to apply to the resources. | `map(string)` | <pre>{<br/>  "Environment": "staging",<br/>  "Project": "web-app",<br/>  "Terraform": "true"<br/>}</pre> | no |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | Scaleway Organization ID (SCW\_ORGANIZATION\_ID) | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Scaleway Project ID (SCW\_DEFAULT\_PROJECT\_ID) | `string` | n/a | yes |
| <a name="input_sc_region"></a> [sc\_region](#input\_sc\_region) | ScaleWay region that will be used as default value for all resources (SCW\_DEFAULT\_REGION) | `string` | n/a | yes |
| <a name="input_sc_zone"></a> [sc\_zone](#input\_sc\_zone) | ScaleWay zone that will be used as default value for all resources (SCW\_DEFAULT\_ZONE) | `string` | n/a | yes |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | Scaleway Secret Key (SCW\_SECRET\_KEY) | `string` | n/a | yes |
| <a name="input_state_bucket"></a> [state\_bucket](#input\_state\_bucket) | The S3 bucket name for Terraform state storage. | `string` | n/a | yes |
| <a name="input_state_key"></a> [state\_key](#input\_state\_key) | The S3 key (path) for the Terraform state file. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->