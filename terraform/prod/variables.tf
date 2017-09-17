variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable machine_type {
  description = "Type of machine"
  default     = "g1-small"
}

variable app_source_ranges {
  description = "Source ranges for accessing app"
  default     = ["0.0.0.0/0"]
}

variable ssh_source_ranges {
  description = "Source ranges for SSH"
  default     = ["37.194.103.29/32"]
}
