locals {
  cognitive_account_name_infix = substr(lower(replace(var.azure_cognitive_account_kin, ".", "-")), 0, 16)
}

resource "azurerm_resource_group" "default" {
  name     = "${var.project_name}-cognitivie-services-rgp"
  location = var.azure_region
}

resource "azurerm_cognitive_account" "example" {
  name                = "${var.project_name}-${cognitive_account_name_infix}-cgn-acc"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  kind                = var.azure_cognitive_account_kind

  sku_name = var.azure_cognitive_account_sku

}