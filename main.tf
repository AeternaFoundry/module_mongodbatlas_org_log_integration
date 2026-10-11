resource "mongodbatlas_org_log_integration" "org_log_integrations" {
  for_each = var.org_log_integrations

  log_types             = each.value.log_types
  org_id                = each.value.org_id
  type                  = each.value.type
  otel_endpoint         = each.value.otel_endpoint
  otel_supplied_headers = each.value.otel_supplied_headers
}

