resource "azurerm_public_ip" "lb_public_ip" {
	name = "PublicIpForLB"

	resource_group_name = azurerm_resource_group.rg.name
	location = azurerm_resource_group.rg.location
	
	allocation_method = "Static"
	sku = "Standard"
}

resource "azurerm_lb" "my_loadbalancer" {
	name = "my-load-balancer"

	resource_group_name = azurerm_resource_group.rg.name
	location = azurerm_resource_group.rg.location

	sku = "Standard"
	sku_tier = "Regional"

	frontend_ip_configuration {
		name = "PublicIPAddress"
		public_ip_address_id = azurerm_public_ip.lp_public_ip.id
	}
	
	depends_on = [ azurerm_public_ip.lb_public_ip ]
}

resource "azurerm_lb_backend_address_pool" "lb_backend" {
	name = "LBBackendAddressPool"
	loadbalancer_id = azurerm_lb.my_loadbalancer.id

	depends_on = [ azurerm_lb.my_loadbalancer ]
}

resource "azurerm_lb_backend_address_pool_address" "vms" {
	count = var.vm_count

	name = "add-vm-${count.index}-to-lb-pool"
	backend_address_pool_id = azurerm_lb_backend_address_pool.lb_backend.id
	virtual_network_id = azurerm_virtual_network_my_virtual_network.id
	ip_address = azurerm_linux
	
}
	
