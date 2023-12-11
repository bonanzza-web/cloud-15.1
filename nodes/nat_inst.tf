resource "yandex_compute_instance" "nat" {
  name                  = var.nat_inst_name
  zone                  = var.zone
  hostname              = var.nat_inst_name

  resources {
    cores               = 2
    memory              = 2
    core_fraction       = 5
  }
  network_interface {
    subnet_id           = yandex_vpc_subnet.public.id
    ip_address          = var.nat_ip
    nat                 = true
  }
  boot_disk {
    initialize_params {
      image_id          = var.nat_inst_image
      size              = 40
    }
  }
  metadata = {
    serial-port-enable  = true
    ssh-keys            = "ubuntu:${local.ssh_key}"
  }

}