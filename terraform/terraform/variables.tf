# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1go9e4ubu2j6qd2p405"
}

# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1geqt5abtnjpoa0oupi"
}

# sa_k8s id
variable "sa_k8s_id" {
  default = "ajec408kksgo0nv6omni"
}

# IP
variable "host_ip" {
  default = "0.0.0.0/0"
}

variable "default_zone" {
  default     = "ru-central1-a"
}

# sa_json_credentials
variable "yc_sa_terraform_json_credentials" {}
