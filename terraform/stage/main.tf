provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

module "app" {
  source          = "../modules/app"
  public_key_path = "${var.public_key_path}"
  app_disk_image  = "${var.app_disk_image}"
  zone            = "${var.zone}"
  machine_type    = "${var.machine_type}"
  source_ranges   = "${var.app_source_ranges}"
}

module "db" {
  source          = "../modules/db"
  public_key_path = "${var.public_key_path}"
  db_disk_image   = "${var.db_disk_image}"
  zone            = "${var.zone}"
  machine_type    = "${var.machine_type}"
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = "${var.ssh_source_ranges}"
}
