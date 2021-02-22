variable "region" {
  type = string
  default = "us-east1"
}

variable "project_id" {
  type = string
}

variable "gke_subnet_cidr" {
  type = string
  default = "10.1.0.0/16"
}

variable "vpc_name" {
  type = string
}