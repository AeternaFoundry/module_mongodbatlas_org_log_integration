output "org_log_integrations_integration_id" {
  description = "Map of integration_id values across all org_log_integrations, keyed the same as var.org_log_integrations except keys with no integration_id are omitted"
  value       = { for k, v in mongodbatlas_org_log_integration.org_log_integrations : k => v.integration_id if v.integration_id != null && length(v.integration_id) > 0 }
}
output "org_log_integrations_log_types" {
  description = "Map of log_types values across all org_log_integrations, keyed the same as var.org_log_integrations except keys with no log_types are omitted"
  value       = { for k, v in mongodbatlas_org_log_integration.org_log_integrations : k => v.log_types if v.log_types != null && length(v.log_types) > 0 }
}
output "org_log_integrations_org_id" {
  description = "Map of org_id values across all org_log_integrations, keyed the same as var.org_log_integrations except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_org_log_integration.org_log_integrations : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "org_log_integrations_otel_endpoint" {
  description = "Map of otel_endpoint values across all org_log_integrations, keyed the same as var.org_log_integrations except keys with no otel_endpoint are omitted"
  value       = { for k, v in mongodbatlas_org_log_integration.org_log_integrations : k => v.otel_endpoint if v.otel_endpoint != null && length(v.otel_endpoint) > 0 }
}
output "org_log_integrations_otel_supplied_headers" {
  description = "Map of otel_supplied_headers values across all org_log_integrations, keyed the same as var.org_log_integrations except keys with no otel_supplied_headers are omitted"
  value       = { for k, v in mongodbatlas_org_log_integration.org_log_integrations : k => v.otel_supplied_headers if v.otel_supplied_headers != null && length(v.otel_supplied_headers) > 0 }
  sensitive   = true
}
output "org_log_integrations_type" {
  description = "Map of type values across all org_log_integrations, keyed the same as var.org_log_integrations except keys with no type are omitted"
  value       = { for k, v in mongodbatlas_org_log_integration.org_log_integrations : k => v.type if v.type != null && length(v.type) > 0 }
}

