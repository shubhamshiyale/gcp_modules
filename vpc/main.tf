
resource "google_compute_network" "vpc_network" {
    name                    = var.vpc_name
    auto_create_subnetworks = var.auto_create_subnetworks
    project  = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
    name          = var.subnet_name
    project       = var.project_id
    ip_cidr_range = var.subnet_ip_cidr_range
    region        = var.region
    network       = google_compute_network.vpc_network.id
}