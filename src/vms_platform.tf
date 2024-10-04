variable "vm_db_platform_id" {
  type    = string
  default = "standard-v1"
}

variable "vm_db_params" {
  type = object({
    preemptible = bool
    nat         = bool
  })

  default = {
    preemptible = true
    nat         = false
  }
}

variable "additional_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "additional_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
