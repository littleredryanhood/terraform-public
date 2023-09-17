module "main" {
  source              = "./modules/digitalocean_record/"
  digitalocean_record = local.digitalocean_record
}
