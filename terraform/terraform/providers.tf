terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.80"
  
  backend "s3" {
    endpoint   = "https://storage.yandexcloud.net"
    bucket     = "panarin-state-bucket"
    region     = "ru-central1"
    key        = "terraform.tfstate"
   
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true 
  }
}

provider "yandex" {
  service_account_key_file = "${var.yc_sa_terraform_json_credentials}"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
}

