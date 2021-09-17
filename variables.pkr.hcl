variable "hcloud_token" {
    default = "${env("HCLOUD_TOKEN")}"
}

variable "base_image" {
    default = "ubuntu-20.04"
}

variable "vm_location"{
    default = "fsn1"
}

variable "vm_type"{
    default = "cx11"
}

variable "snapshot_name"{
    default = "microk8s-image"
}

variable "release_version" {
    default = "${env("RELEASE_VERSION")}"
}
