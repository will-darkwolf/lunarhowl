# Configure the Google Cloud Provider
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

variable "bucket_name" {
  type        = string
  description = "The name of the GCS bucket"
  validation {
    condition = can(regex("^[a-z]{1,5}$", var.bucket_name))
    error_message = "Bucket name must contain no more than 5 letters, all lower-case."
  }
}

resource "random_string" "suffix" {
  length  = 4
  special = false
  lower = true
  upper = false
}


# Create a GCS bucket
resource "google_storage_bucket" "wolf-bucket" {
  name = "Wolf-${var.bucket_name}-${random_string.suffix.result}" # Choose a unique bucket name
  location = "US" # Specify the desired region for your bucket

  # Optional: Enable uniform bucket level access
  # This allows granular control over object permissions
  uniform_bucket_level_access = true

}
