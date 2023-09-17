module "digitalocean_domain" {
  source      = "./modules"
  for_each    = toset(local.domains)
  domain_name = each.value
}

