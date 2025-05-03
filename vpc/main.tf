
resource "google_compute_network" "this" {
    name                    = var.vpc_name
    auto_create_subnetworks = var.auto_create_subnetworks
    project  = var.project_id
}

resource "google_compute_subnetwork" "subnets" {
  for_each      = { for s in local.current_subnets : s.subnet_name => s }
  name          = each.value.subnet_name
  project       = var.project_id
  ip_cidr_range = each.value.subnet_ip_cidr_range
  region        = each.value.subnet_region
  network       = google_compute_network.this.self_link
}