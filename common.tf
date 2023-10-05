data "vcd_org_vdc" "new-vcd-org-vdc" {
  name = var.vcd_vdc
}

resource "vcd_vdc_group" "new-vdc-group" {
  org                   = var.vcd_org
  name                  = var.vcd_new-vdc-group-name
  starting_vdc_id       = data.vcd_org_vdc.new-vcd-org-vdc.id
  participating_vdc_ids = [var.vcd_participating_vdc_ids]
  dfw_enabled           = true
  default_policy_status = true
}

resource "vcd_nsxt_edgegateway" "current-nsxt-edgegateway" {
  org      = var.vcd_org
  name     = var.vcd_current-nsxt-edgegateway-name
  external_network_id = var.vcd_external_network_id
}

resource "vcd_network_routed_v2" "edge01_routed01" {
  edge_gateway_id = resource.vcd_nsxt_edgegateway.current-nsxt-edgegateway.id
  name            = var.vcd_edge01_routed01-name
  gateway         = var.vcd_edge01_routed01-gateway
  prefix_length   = var.vcd_edge01_routed01-prefix

  static_ip_pool {
    start_address = var.vcd_edge01_routed01-start_address
    end_address   = var.vcd_edge01_routed01-end_address
  }
}
