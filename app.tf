resource "vcd_vapp" "dev_vapp" {
  name = var.vcd_dev_vapp-name
}

resource "vcd_vapp_org_network" "dev_vapp_org_net_edge01_routed01" {
  vapp_name        = vcd_vapp.dev_vapp.name
  org_network_name = resource.vcd_network_routed_v2.edge01_routed01.name
}

resource "vcd_vapp_vm" "vapp_cvm_dev" {
  count            = var.vcd_vapp_cvm_dev-count
  vapp_name        = vcd_vapp.dev_vapp.name
  name             = "${var.vcd_vapp_cvm_dev-vmname}${count.index + 1}"
  computer_name    = "${var.vcd_vapp_cvm_dev-vmname}${count.index + 1}"
  description      = "${var.vcd_vapp_cvm_dev-vmdesc} ${count.index + 1}"
  memory           = var.vcd_vapp_cvm_dev-memory
  cpus             = var.vcd_vapp_cvm_dev-cpus
  cpu_cores        = 1
  os_type          = var.vcd_vapp_cvm_dev-os_type
  hardware_version = var.vcd_vapp_cvm_dev-hardware_version
  vapp_template_id = var.vcd_vapp_template_id
  vm_name_in_template = var.vcd_vm_name_in_template

  override_template_disk {
  bus_type        = "paravirtual"
  size_in_mb      = var.vcd_vapp_cvm_dev-disk
  bus_number      = 0
  unit_number     = 0
  iops            = 0
  storage_profile = "*"
  }

  network {
  type               = "org"
  name               = resource.vcd_network_routed_v2.edge01_routed01.name
  ip_allocation_mode = "POOL"
  }
}
