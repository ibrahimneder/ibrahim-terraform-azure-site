
output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "static_web_app_url" {
  description = "URL of the Static Web App"
  value       = "https://${azurerm_static_web_app.main.default_host_name}"
}

output "static_web_app_api_key" {
  description = "API key for Static Web App deployment (sensitive)"
  value       = azurerm_static_web_app.main.api_key
  sensitive   = true
}

output "application_insights_instrumentation_key" {
  description = "Application Insights instrumentation key"
  value       = azurerm_application_insights.main.instrumentation_key
  sensitive   = true
}

output "application_insights_connection_string" {
  description = "Application Insights connection string"
  value       = azurerm_application_insights.main.connection_string
  sensitive   = true
}

output "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  value       = azurerm_log_analytics_workspace.main.id
}
