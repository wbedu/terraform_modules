
## Description

Terraform module to create, version, and deploy a Cloudflare Worker with optional custom domain and bindings
Deployes a sample hello world template.



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 5.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 5.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_worker.api](https://registry.terraform.io/providers/cloudflare/cloudflare/5.11.0/docs/resources/worker) | resource |
| [cloudflare_worker_version.api_ver](https://registry.terraform.io/providers/cloudflare/cloudflare/5.11.0/docs/resources/worker_version) | resource |
| [cloudflare_workers_custom_domain.example_workers_custom_domain](https://registry.terraform.io/providers/cloudflare/cloudflare/5.11.0/docs/resources/workers_custom_domain) | resource |
| [cloudflare_workers_deployment.api_deploy](https://registry.terraform.io/providers/cloudflare/cloudflare/5.11.0/docs/resources/workers_deployment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Cloudflare account ID | `string` | n/a | yes |
| <a name="input_bindings"></a> [bindings](#input\_bindings) | List of Worker bindings for the Cloudflare Worker version. | <pre>list(object({<br/>    name                     = string<br/>    type                     = string<br/>    id                       = optional(string)<br/>    analytics_engine         = optional(string)<br/>    assets                   = optional(string)<br/>    browser                  = optional(string)<br/>    d1                       = optional(string)<br/>    data_blob                = optional(string)<br/>    dispatch_namespace       = optional(string)<br/>    durable_object_namespace = optional(string)<br/>    hyperdrive               = optional(string)<br/>    inherit                  = optional(string)<br/>    images                   = optional(string)<br/>    json                     = optional(string)<br/>    kv_namespace             = optional(string)<br/>    mtls_certificate         = optional(string)<br/>    plain_text               = optional(string)<br/>    pipelines                = optional(string)<br/>    queue                    = optional(string)<br/>    r2_bucket                = optional(string)<br/>    secret_text              = optional(string)<br/>    send_email               = optional(string)<br/>    service                  = optional(string)<br/>    tail_consumer            = optional(string)<br/>    text_blob                = optional(string)<br/>    vectorize                = optional(string)<br/>    version_metadata         = optional(string)<br/>    secrets_store_secret     = optional(string)<br/>    secret_key               = optional(string)<br/>    workflow                 = optional(string)<br/>    wasm_module              = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | hostname for the worker | `string` | n/a | yes |
| <a name="input_worker_name"></a> [worker\_name](#input\_worker\_name) | worker name as it will display in Cloudflare | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Cloudflare zone ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_worker_id"></a> [worker\_id](#output\_worker\_id) | n/a |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | n/a |
