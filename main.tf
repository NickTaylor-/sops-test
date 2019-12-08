provider "cloudflare" {
  version     = "~> 2.0"
  api_token   = var.cloudflare_api_token
}

module "berafindlove_com" {
  source = "./berafindlove.com"
}