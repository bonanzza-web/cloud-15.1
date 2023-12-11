variable "token" {
  type        = string
}

variable "cloud_id" {
  type        = string
}

variable "folder_id" {
  type        = string
}

variable "vpc" {
  type        = string
  default     = "netology"
}

variable "cidr_pub" {
  type        = list(string)
  default     = [ "192.168.10.0/24" ]
}

variable "cidr_private" {
  type        = list(string)
  default     = [ "192.168.20.0/24" ]
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
}

variable "public" {
  type        = string
  default     = "public"
}

variable "private" {
  type        = string
  default     = "private"
}

variable "nat_ip" {
  type        = string
  default     = "192.168.10.254"
}

variable "nat_inst_name" {
  type        = string
  default     = "nat-instance"
}

variable "nat_inst_image" {
  type        = string
  default     = "fd80mrhj8fl2oe87o4e1"
}

variable "os_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "OS Family"
}

variable "public_vm_name" {
  type        = string
  default     = "public-vm"
}

variable "private_vm_name" {
  type        = string
  default     = "private-vm"
}

variable "static_route_dest_prefix" {
  type = string
  default = "0.0.0.0/0"
}