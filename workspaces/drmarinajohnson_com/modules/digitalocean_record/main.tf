module "digitalocean_record" {
  source   = "git::git@github.com:littleredryanhood/terraform-modules.git//digitalocean/digitalocean_record?ref=digitalocean_record"
  for_each = var.digitalocean_record

  name     = each.key
  type     = each.value["type"]
  ttl      = lookup(each.value, "ttl", null)
  priority = lookup(each.value, "priority", null)
  value    = lookup(each.value, "value", null)
  domain   = "drmarinajohnson.com"

}

