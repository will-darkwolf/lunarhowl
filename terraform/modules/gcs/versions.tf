terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.24.0, < 6.0.0" # tftest
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.24.0, < 6.0.0" # tftest
    }
  }
}