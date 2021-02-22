provider "google" {
  project = var.project_id
  region = var.region
  credentials = "/Users/arunacande/gcp_service_accounts/terraform-account.json"
}

terraform {
  backend "gcs" {
    bucket  = "terraform-gcp-infra-test"
    prefix  = "network"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.51.0"
    }
  }
  required_version = "0.14.2"
}

data "google_project" "project" {
  project_id = var.project_id
}