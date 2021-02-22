output "project_id" {
    value = data.google_project.project.project_id
}

output "vpc_id" {
    value = google_compute_network.primary.id
}

output "application_subnet_self_link" {
    value = google_compute_subnetwork.application_subnet.self_link
}