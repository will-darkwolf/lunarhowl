# Configure the Google Cloud Provider
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

variable "project_id" {
  type        = string
  description = "The GCP project ID"
  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.project_id))
    error_message = "Project ID must be lowercase alphanumeric with hyphens only."
  }
}

resource "random_string" "suffix" {
  length  = 4
  special = false
  lower   = true
  upper   = false
}

# Create a GCS bucket
resource "google_storage_bucket" "wolf-bucket" {
  name     = "wolf-${var.bucket_name}-${random_string.suffix.result}" # Choose a unique bucket name
  location = "US" # Specify the desired region for your bucket

  # Optional: Enable uniform bucket level access
  # This allows granular control over object permissions
  uniform_bucket_level_access = true
}
