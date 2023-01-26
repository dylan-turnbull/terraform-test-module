terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.8.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.47.0"
    }
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "0.1.32"
    }
  }
}