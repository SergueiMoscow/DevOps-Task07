locals {
  vm_web_name = "${var.company}-${var.vpc_name}-web"
  vm_db_name  = "${var.company}-${var.vpc_name}-db"
  vm_metadata = {
    serial-port-enable = 1
    ssh-keys           = "${var.vms_ssh_user}:${file("~/.ssh/id_ed25519.pub")}"
  }
}
