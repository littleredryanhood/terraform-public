variable "domain_name" {
  type        = string
  description = "domain name"
}
variable "domain_ip" {
  type        = string
  description = "The IP address to point the domain to"
  default     = null
}
