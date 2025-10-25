output "zone_id" {
  value = var.zone_id
  description = "Zone Id for worker"
}

output "worker_id" {
  value = cloudflare_worker.api.id
  description = "Worker Identifier"
}