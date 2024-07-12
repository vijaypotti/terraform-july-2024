resource "azurerm_resource_group" "tektutorlabs_cosmosdb" {
  name     = "${var.prefix}-resources"
  location = var.location
}

resource "azurerm_cosmosdb_account" "tektutorlabs_cosmosdb" {
  name                = "${var.prefix}-cosmosdb"
  location            = azurerm_resource_group.tektutorlabs_cosmosdb.location
  resource_group_name = azurerm_resource_group.tektutorlabs_cosmosdb.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 10
    max_staleness_prefix    = 200
  }

  geo_location {
    location          = azurerm_resource_group.tektutorlabs_cosmosdb.location
    failover_priority = 0
  }
}
