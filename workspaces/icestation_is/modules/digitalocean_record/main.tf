module "digitalocean_record" {
  source   = "github.com/littleredryanhood/terraform-modules//digitalocean/digitalocean_record?ref=digitalocean_record"
  for_each = var.digitalocean_record

  domain   = "icestation.is"
  name     = each.key
  type     = each.value["type"]
  priority = lookup(each.value, "priority", null)
  ttl      = lookup(each.value, "ttl", null)
  value    = lookup(each.value, "value", null)

}
