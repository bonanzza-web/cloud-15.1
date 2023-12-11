resource "yandex_vpc_subnet" "public" {
  name            = var.public
  zone            = var.zone
  v4_cidr_blocks  = var.cidr_pub
  network_id      = yandex_vpc_network.netology.id
}