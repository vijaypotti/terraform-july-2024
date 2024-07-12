output "cosmos-db-id" {
  value = azurerm_cosmosdb_account.tektutorlabs_cosmosdb.id
}

output "cosmos-db-endpoint" {
  value = azurerm_cosmosdb_account.tektutorlabs_cosmosdb.endpoint
}

output "cosmos-db-endpoints_read" {
  value = azurerm_cosmosdb_account.tektutorlabs_cosmosdb.read_endpoints
}

output "cosmos-db-endpoints_write" {
  value = azurerm_cosmosdb_account.tektutorlabs_cosmosdb.write_endpoints
}

output "cosmos-db-primary_key" {
  value = azurerm_cosmosdb_account.tektutorlabs_cosmosdb.primary_key
  sensitive = true
}

output "cosmos-db-secondary_key" {
  value = azurerm_cosmosdb_account.tektutorlabs_cosmosdb.secondary_key
  sensitive = true
}
