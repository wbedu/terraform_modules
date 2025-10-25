
variable "account_id" {
  type        = string
  description = "Cloudflare account ID"
}

variable "zone_id" {
  type        = string
  description = "Cloudflare zone ID"
}

variable "worker_name" {
  type = string
  description = "worker name as it will display in Cloudflare"
}

variable "hostname" {
  type = string
  description = "hostname for the worker"
}

variable "bindings" {
  description = "List of Worker bindings for the Cloudflare Worker version."
  type = list(object({
    name                     = string
    type                     = string
    id                       = optional(string)
    analytics_engine         = optional(string)
    assets                   = optional(string)
    browser                  = optional(string)
    d1                       = optional(string)
    data_blob                = optional(string)
    dispatch_namespace       = optional(string)
    durable_object_namespace = optional(string)
    hyperdrive               = optional(string)
    inherit                  = optional(string)
    images                   = optional(string)
    json                     = optional(string)
    kv_namespace             = optional(string)
    mtls_certificate         = optional(string)
    plain_text               = optional(string)
    pipelines                = optional(string)
    queue                    = optional(string)
    r2_bucket                = optional(string)
    secret_text              = optional(string)
    send_email               = optional(string)
    service                  = optional(string)
    tail_consumer            = optional(string)
    text_blob                = optional(string)
    vectorize                = optional(string)
    version_metadata         = optional(string)
    secrets_store_secret     = optional(string)
    secret_key               = optional(string)
    workflow                 = optional(string)
    wasm_module              = optional(string)
  }))
  default = []
}
