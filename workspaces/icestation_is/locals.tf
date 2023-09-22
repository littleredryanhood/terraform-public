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
    "spf_records" = {
      name  = "@"
      type  = "TXT"
      value = "v=spf1 include:_spf.google.com ~all"
      ttl   = 3600
    }
  }


}
