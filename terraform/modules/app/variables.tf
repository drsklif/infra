variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable zone {
  description = "Zone"
}

variable machine_type {
  description = "Type of machine"
}

variable source_ranges {
  type        = "list"
  description = "Source ranges for accessing app"
}
