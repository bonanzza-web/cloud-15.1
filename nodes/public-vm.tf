data "yandex_compute_image" "public_image" {
  family                 = var.os_family
}

resource "yandex_compute_instance" "public_vm" {
  name                   = var.public_vm_name
  hostname               = var.public_vm_name
  resources {
    core_fraction        = 5
    cores                = 2
    memory               = 2
  }
  boot_disk {
    initialize_params {
      size               = 40
      image_id           = data.yandex_compute_image.public_image.id
    }
  }
  network_interface {
    subnet_id            = yandex_vpc_subnet.public.id
    nat                  = true
  }
  metadata = {
    serial-port-enable   = true
    ssh-keys             = "ubuntu:${local.ssh_key}"
  }
}
