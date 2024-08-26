locals {
  prefix       = var.prefix == null ? "" : "${var.prefix}-"
  notification = try(var.notification_config.enabled, false)
}

resource "google_storage_bucket" "bucket" {
  name                        = "${local.prefix}${lower(var.name)}"
  project                     = var.project_id
  location                    = var.location
  storage_class               = var.storage_class
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access
  labels                      = var.labels
  requester_pays              = var.requester_pays
  public_access_prevention    = var.public_access_prevention
  versioning {
    enabled = var.versioning
  }

  dynamic "autoclass" {
    for_each = var.autoclass == null ? [] : [""]
    content {
      enabled = var.autoclass
    }
  }

  dynamic "encryption" {
    for_each = var.encryption_key == null ? [] : [""]

    content {
      default_kms_key_name = var.encryption_key
    }
  }
}