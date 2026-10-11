variable "org_log_integrations" {
  description = <<EOT
Map of org_log_integrations, attributes below
Required:
    - log_types
    - org_id
    - type
Optional:
    - otel_endpoint
    - otel_supplied_headers
EOT

  type = map(object({
    log_types     = set(string)
    org_id        = string
    type          = string
    otel_endpoint = optional(string)
    otel_supplied_headers = optional(list(object({
      name  = string
      value = string
    })))
  }))
}

