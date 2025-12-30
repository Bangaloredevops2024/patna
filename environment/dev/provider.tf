terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ca2d764d-6af0-4ecc-8eaf-76bd3b666806"
}
# Configuration options
