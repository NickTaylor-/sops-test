locals {
  config = yamldecode(file("berafindlove.com/config.yml"))
  zone_id = local.config["zone_id"]
}

resource "cloudflare_record" "www" {
  for_each = local.config["domains"]
  name = each.key
  type = each.value["type"]
  value = each.value["value"]
  zone_id = local.zone_id
}