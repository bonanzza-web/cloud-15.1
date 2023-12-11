locals {
  ssh_key = file("~/.ssh/id_rsa.pub")
}

locals {
  ssh_key_pub = file("./pub.pub")
}