resource "google_compute_network" "primary" {
  name                    = var.vpc_name
  auto_create_subnetworks = "false"
  routing_mode            = "REGIONAL"
  project                 = data.google_project.project.project_id
}

resource "google_compute_subnetwork" "application_subnet" {
  name          = "application-subnet"
  ip_cidr_range = var.gke_subnet_cidr
  region        = var.region
  network       = google_compute_network.primary.id
}