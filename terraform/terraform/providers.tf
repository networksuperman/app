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
    access_key = "123"
    secret_key = "321"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true 
  }
}

provider "yandex" {
  service_account_key_file = "${var.yc_sa_terraform_json_credentials}"
}
