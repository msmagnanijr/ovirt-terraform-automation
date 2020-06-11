variable "ovirt_url" {
    description = "oVirt API URL"
    default = "https://ovirt.mmagnani.lab/ovirt-engine/api"
}
variable "ovirt_username" {
    description = "oVirt Admin user"
    default     = "admin@internal"
}
variable "ovirt_password" {
    description = "oVirt Admin password"
    default     = "supersecret"
}

# Basic
variable "vm_name" {
  description = " A unique name for the VM"
  default     = ""
}
variable "cluster_id" {
  description = "The ID of cluster the VM belongs to"
  default     = ""
}
variable "vm_template_id" {
  description = "The ID of template the VM based on"
  default     = ""
}
variable "vm_memory" {
  description = "The amount of memory of the VM (in metabytes)"
  default     = "4096"
}
variable "vm_cpu_cores" {
  description = "The amount of cores"
  default     = "2"
}
variable "vm_cpu_sockets" {
  description = "The amount of sockets"
  default     = "1"
}
variable "vm_cpu_threads" {
  description = " The amount of threads"
  default     = "1"
}

# VM initialization

##https://github.com/msmagnanijr.keys
variable "vm_authorized_ssh_key" {
  description = "The ssh key for the VM"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAudyF45I9TUFvFcsbThGrveydZu/ceZdSFlmfPXNwkqlpJ2Hvk8SadFGRvOE2Wn10BbK0jUpawTS0xcvr2jUnuKXkLt9rLu/JCI/IKZbiIfn+fx8UeWRNrfwDmoDzcTWmsr16X0+feSU4fNS4zCcWwk2x1nDtbLQ8ry6Qhc2UsAOs2dVCz21JtewOaMf4ZqFxmLjIXrQUCWtNvRFZfrk6b3aZQuR0FFtfoy/Ts13PA6dPNGoL10HFuYQM+uKKA7RpKPJDuGShGXhbr7xXs4mzEkZHFh+8LlePtiDVweENLboRXUzz5td0L2XpUNBHZCc/4PsM5wrDivJErTFXD2Rf8nksS0+dJk/5ColS1ie7bQZJyg+kmUn0Ab/q824Ak1VyKTI0xr1B4iTORSa8ajnyEYXY/sO+ecQWAQVXmodWQu/LZ5k0vMfYmh4A8FNFVT86eGAvTIA3igUsfcaaH9J6gD+gufR5hxcOM83kyhSuE/wUJcFNc3rLj2HBPwEYfsU="
}
variable "vm_hostname" {
  description = "The hostname for the VM"
  default     = ""
}
variable "vm_timezone" {
  description = "The timezone for the VM"
  default     = ""
}
variable "vm_user_name" {
  description = "The user name for the VM"
  default     = ""
}
variable "vm_custom_script" {
  description = "Set the custom script for the VM"
  default     = ""
}
variable "vm_dns_search" {
  description = "The dns server for the VM"
  default     = ""
}
variable "vm_dns_servers" {
  description = "The dns server for the VM"
  default     = ""
}

# Initialization - Nic Configurations
variable "vm_nic_device" {
  description = "The vNIC to apply this configuration."
  default     = ""
}
variable "vm_nic_boot_proto" {
  description = "The boot protocol for the vNIC configuration."
  default     = "static"
}
variable "vm_nic_ip_address" {
  description = "The IP address for the vNIC"
  default     = ""
}
variable "vm_nic_gateway" {
  description = "The gateway for the vNIC"
  default     = ""
}
variable "vm_nic_netmask" {
  description = "The netmask for the vNIC"
  default     = ""
}
variable "vm_nic_on_boot" {
  description = "The flag to indicate whether the vNIC will be activated at VM booting"
  default     = "true"
}
