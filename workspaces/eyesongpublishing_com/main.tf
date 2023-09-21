module "digitalocean_record" {
  source = "./modules/digitalocean_record"

  digitalocean_record = local.digitalocean_records
}
