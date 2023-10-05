variable "vcd_user" {
  type = string
}

variable "vcd_pass" {
  type = string
}

variable "vcd_auth_type" {
  type = string
}

variable "vcd_org" {
  type = string
}

variable "vcd_vdc" {
  type = string
}

variable "vcd_url" {
  type = string
}

variable "vcd_external_network_id" {
  type = string
}

variable "vcd_vapp_template_id" {
  type = string
}

variable "vcd_vm_name_in_template" {
  type = string
}

variable "vcd_participating_vdc_ids" {
  type = string
}

variable "vcd_new-vdc-group-name" {
  type = string
}

variable "vcd_current-nsxt-edgegateway-name" {
  type = string
}

variable "vcd_edge01_routed01-name" {
  type = string
}

variable "vcd_edge01_routed01-gateway" {
  type = string
}

variable "vcd_edge01_routed01-prefix" {
  type = number
}

variable "vcd_edge01_routed01-start_address" {
  type = string
}

variable "vcd_edge01_routed01-end_address" {
  type = string
}

variable "vcd_dev_vapp-name" {
  type = string
}

variable "vcd_vapp_cvm_dev-count" {
  type = number
}

variable "vcd_vapp_cvm_dev-os_type" {
  type = string
}

variable "vcd_vapp_cvm_dev-hardware_version" {
  type = string
}

variable "vcd_vapp_cvm_dev-memory" {
  type = number
}

variable "vcd_vapp_cvm_dev-cpus" {
  type = number
}

variable "vcd_vapp_cvm_dev-disk" {
  type = string
}

variable "vcd_vapp_cvm_dev-vmname" {
  type = string
}

variable "vcd_vapp_cvm_dev-vmdesc" {
  type = string
}
