resource "digitalocean_domain" "default" {
  for_each = toset(local.domains)
  name     = each.key
}
