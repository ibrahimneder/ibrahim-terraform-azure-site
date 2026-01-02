
terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.owner_name}-${var.project_name}-${var.environment}"
  location = var.location
  tags     = var.common_tags
}

resource "azurerm_static_web_app" "main" {
  name                = "swa-${var.owner_name}-${var.project_name}-${var.environment}"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = merge(
    var.common_tags,
    {
      ResourceType = "Static Web App"
    }
  )
}

resource "azurerm_log_analytics_workspace" "main" {
  name                = "law-${var.owner_name}-${var.project_name}-${var.environment}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = merge(
    var.common_tags,
    {
      ResourceType = "Log Analytics"
    }
  )
}

resource "azurerm_application_insights" "main" {
  name                = "appi-${var.owner_name}-${var.project_name}-${var.environment}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  workspace_id        = azurerm_log_analytics_workspace.main.id
  application_type    = "web"

  tags = merge(
    var.common_tags,
    {
      ResourceType = "Application Insights"
    }
  )
}
