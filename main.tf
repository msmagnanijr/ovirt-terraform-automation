provider "ovirt" {
  url = var.ovirt_url
  username  = var.ovirt_username
  password  = var.ovirt_password
}

terraform {
  backend "local" {
    path = "ovirt_terraform.tfstate"
  }
}

resource "ovirt_vm" "vm" {
  name                 = "ipa"
  clone                = "false"
  high_availability    = "false"
  cluster_id           = "4749f2ae-ab54-11ea-9510-2c4d544b0bd1"
  memory               = 4096
  template_id          = "74d6de3d-a37b-4edf-9c00-777a292e1815"
  cores                = 4

  initialization {
    authorized_ssh_key = var.vm_authorized_ssh_key
    host_name          = "ipa.mmagnani.lab"
    timezone           = "America/Sao_Paulo"
    dns_search         = "mmagnani.lab"
    dns_servers        = "10.0.0.100 10.0.0.1 8.8.8.8"

    nic_configuration {
      label              = "eth0"
      boot_proto         = "static"
      address            = "10.0.0.100"
      gateway            = "10.0.0.1"
      netmask            = "255.255.255.0"
      on_boot            = "true"
    }
  }
}