terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}
provider "yandex" {
    token = var.token
    folder_id = var.folder_id
    cloud_id = var.cloud_id
    zone = "ru-central1-a"
}
