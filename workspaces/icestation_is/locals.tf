locals {
  digitalocean_records = {
    "ha" = {
      type  = "A"
      value = "192.168.7.5"
    }
    "@" = {
      type     = "MX"
      value    = "smtp.google.com."
      priority = "1"
    }
  }


}
