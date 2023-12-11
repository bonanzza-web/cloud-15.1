resource "yandex_vpc_subnet" "private" {
  name                   = var.private
  zone                   = var.zone
  v4_cidr_blocks         = var.cidr_private
  network_id             = yandex_vpc_network.netology.id
  route_table_id         = yandex_vpc_route_table.nat_table.id
}

resource "yandex_vpc_route_table" "nat_table" {
  network_id             = yandex_vpc_network.netology.id

  static_route {
    destination_prefix   = var.static_route_dest_prefix
    next_hop_address     = var.nat_ip
  }
}