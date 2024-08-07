# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1go9e4ubu2j6qd2p405"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1geqt5abtnjpoa0oupi"
}

# S3 bucket name
variable "s3_bucket_name" {
  default = "panarin-state-bucket"
}

# sa_k8s id
variable "sa_k8s_id" {
  default = "ajee6d30n765cut4qegl"
}

# IP
variable "host_ip" {
  #default = "92.255.137.0/24"
  default = "0.0.0.0/0"
}

variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  default     = "ru-central1-a"
}