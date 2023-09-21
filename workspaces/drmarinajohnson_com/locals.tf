locals {
  digitalocean_records = {
    "spf_records" = {
      name  = "@"
      type  = "TXT"
      value = "v=spf1 include:_spf.google.com ~all"
      ttl   = 3600
    }
    "@" = {
      type     = "MX"
      value    = "smtp.google.com."
      priority = "1"
    }
  }


}
