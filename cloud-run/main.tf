provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_cloud_run_v2_service" "this" {
  name     = var.service_name
  location = var.region

  template {
    containers {
      image = var.image
    }
  }
}
