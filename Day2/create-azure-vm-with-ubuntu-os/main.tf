resource "azurerm_resource_group" "jegan_rg" {
  name     = "jegan_rg"
  location = "eastus2"
}

resource "azurerm_network_security_group" "firewall" {
  name                = "firewqll"
  location            = azurerm_resource_group.jegan_rg.location
  resource_group_name = azurerm_resource_group.jegan_rg.name

  security_rule {
	name = "AllowSSH"
	priority = 300
	direction = "Inbound"
	access  = "Allow"
	protocol = "Tcp"
	source_port_range = "*"
	destination_port_range = "22"
	source_address_prefix = "*"
	destination_address_prefix = "*"
  }
}

resource "azurerm_public_ip" "public_ip" {
  name = "public_ip"
  location            = azurerm_resource_group.jegan_rg.location
  resource_group_name = azurerm_resource_group.jegan_rg.name
  allocation_method  = "Dynamic"

}

resource "azurerm_virtual_network" "network" {
  name                = "network"
  location            = azurerm_resource_group.jegan_rg.location
  resource_group_name = azurerm_resource_group.jegan_rg.name
  address_space       = ["10.20.0.0/16"]
}

resource "azurerm_subnet" "subnet1" {
	name = "subnet1"
  	resource_group_name = azurerm_resource_group.jegan_rg.name
	virtual_network_name = azurerm_virtual_network.network.name 
	address_prefixes = [ "10.20.1.0/24" ]
}

resource "azurerm_network_interface" "my_network_card" {
  name = "my-network-card"
  location            = azurerm_resource_group.jegan_rg.location
  resource_group_name = azurerm_resource_group.jegan_rg.name

  ip_configuration {
     name = "internal" 
     subnet_id = azurerm_subnet.subnet1.id
     private_ip_address_allocation = "Dynamic"
     public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}

resource "tls_private_key" "my_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "azurerm_linux_virtual_machine" "my_linux_vm" {
  name = "my-linux-vm"
  location            = azurerm_resource_group.jegan_rg.location
  resource_group_name = azurerm_resource_group.jegan_rg.name
  network_interface_ids = [
	azurerm_network_interface.my_network_card.id
  ]
  size = "Standard_F2"
  disable_password_authentication = true

  admin_ssh_key {
    username = "azureuser"
    public_key = tls_private_key.my_key_pair.public_key_openssh 
  }
  
  admin_username = "azureuser"

  os_disk {
	caching = "ReadWrite"
	storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-jammy"
    sku = "22_04-lts"
    version = "latest"
  }
}
