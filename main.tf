terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.10.0"
    }
  }
}

provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  auth_type            = var.vcd_auth_type
  org                  = var.vcd_org
  vdc                  = var.vcd_vdc
  url                  = var.vcd_url
  max_retry_timeout    = 60
  allow_unverified_ssl = true
}
