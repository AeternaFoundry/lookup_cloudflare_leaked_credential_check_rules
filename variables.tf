variable "leaked_credential_check_rules_lookup" {
  description = <<EOT
Map of leaked_credential_check_rules_lookup, attributes below
Optional:
    - max_items
    - zone_id
EOT

  type = map(object({
    max_items = optional(number)
    zone_id   = optional(string)
  }))
}

