provider "aws" {}

provider "vault" {
  address               = var.vault_provider.address
  token                 = var.vault_provider.token
  max_lease_ttl_seconds = var.vault_provider.lease_ttl
  dynamic "auth_login" {
    for_each = { for k in [var.vault_provider.auth_login] : k.role => k if var.vault_provider.auth_login != null }
    content {
      path   = auth_login.value["path"]
      method = auth_login.value["method"]
      parameters = {
        role       = auth_login.value["role"]
        sts_region = auth_login.value["sts_region"]
      }
    }
  }
}