###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default     = "b1gs3dkkmirep8agd6af"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default     = "b1gnqq5a1oat2u6dk42u"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

### ssh vars
variable "vms_ssh_user" {
  type    = string
  default = "ubuntu"
}

### for Yandex Compute Image and Instance
variable "vm_web_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "company" {
  type    = string
  default = "netology"
}

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v1"
}

variable "vm_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    hdd_size      = number
    hdd_type      = string
  }))

  default = {
    web = {
      cores         = 2
      memory        = 2
      core_fraction = 5
      hdd_size      = 10
      hdd_type      = "network-hdd"
    }
    db = {
      cores         = 2
      memory        = 4
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-ssd"
    }
  }
}

variable "vm_web_params" {
  type = object({
    preemptible = bool
    nat         = bool
  })

  default = {
    preemptible = true
    nat         = true
  }
}

# Variables for console task
variable "test" {
  type = list(map(list(string)))
}
