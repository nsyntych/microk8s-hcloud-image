source "hcloud" "ubuntu-vm" {
  image        = "${var.base_image}"
  location     = "${var.vm_location}"
  server_type  = "${var.vm_type}"
  ssh_username = "root"
  token        = "${var.hcloud_token}"
  snapshot_name = "${var.base_image}-${var.snapshot_name}"
}

build {
  sources = ["source.hcloud.ubuntu-vm"]

  provisioner "shell" {
    script = "scripts/install-microk8s.sh"
  }

}
