data "cloudflare_leaked_credential_check_rules" "leaked_credential_check_rules_lookup" {
  for_each = var.leaked_credential_check_rules_lookup

  max_items = each.value.max_items
  zone_id   = each.value.zone_id
}

