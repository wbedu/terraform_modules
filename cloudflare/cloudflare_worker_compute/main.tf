terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.11.0"
    }
  }
}

locals {
  dist_module_path = "${path.module}/template/dist/index.js"
}

resource "cloudflare_worker" "api" {
  account_id = var.account_id
  name       = var.worker_name
}

resource "cloudflare_worker_version" "api_ver" {
  account_id = var.account_id
  worker_id  = cloudflare_worker.api.id

  main_module = "index.js"
  modules = [
    {
      name         = "index.js"
      content_file = local.dist_module_path
      content_type = "application/javascript+module"
    }
  ]

  bindings = var.bindings

}

resource "cloudflare_workers_deployment" "api_deploy" {
  account_id  = var.account_id
  script_name = cloudflare_worker.api.name

  strategy = "percentage"

  versions = [
    {
      version_id = cloudflare_worker_version.api_ver.id
      percentage = 100
    }
  ]
}

resource "cloudflare_workers_custom_domain" "example_workers_custom_domain" {
  account_id = var.account_id
  environment = "production"
  hostname = var.hostname
  service = var.worker_name
  zone_id = var.zone_id
}