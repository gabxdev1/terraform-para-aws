locals {
  oidc = split("/id/", var.oidc_issuer)[1]
}