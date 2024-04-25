terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.98.0" # if don't specify will just run in latest version which may not match up
    }
  }
}

provider "azurerm" {
  features {}

}