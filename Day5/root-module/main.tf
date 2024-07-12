module "create-azure-vms" {
  source = "./child-module"
  vm_count = "${var.root_module_vm_count}"
}
