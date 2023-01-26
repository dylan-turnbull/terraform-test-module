####### Context #########
## Vault Variables     ##
#########################
variable "vault_provider" {
  type = object({
    address   = string
    token     = optional(string)
    lease_ttl = optional(number, 7200)
    auth_login = optional(object({
      path       = string
      method     = string
      role       = string
      sts_region = optional(string, "us-east-1")
    }))
  })
}