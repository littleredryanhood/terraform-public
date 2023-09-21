provider "aws" {
  region = "us-west-2"
}
provider "digitalocean" {
  token = var.do_token
}
variable "do_token" {}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"

    }
  }
  required_version = ">= 1.3.1"
  backend "s3" {
    bucket         = "terraform-state-littlered"
    key            = "drmarinajohnson_com/terraform.state"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
