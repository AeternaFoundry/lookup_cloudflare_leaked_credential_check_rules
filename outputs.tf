output "leaked_credential_check_rules_lookup_max_items" {
  description = "Map of max_items values across all leaked_credential_check_rules_lookup, keyed the same as var.leaked_credential_check_rules_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_leaked_credential_check_rules.leaked_credential_check_rules_lookup : k => v.max_items if v.max_items != null }
}
output "leaked_credential_check_rules_lookup_result" {
  description = "Map of result values across all leaked_credential_check_rules_lookup, keyed the same as var.leaked_credential_check_rules_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_leaked_credential_check_rules.leaked_credential_check_rules_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "leaked_credential_check_rules_lookup_zone_id" {
  description = "Map of zone_id values across all leaked_credential_check_rules_lookup, keyed the same as var.leaked_credential_check_rules_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_leaked_credential_check_rules.leaked_credential_check_rules_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

