
variable "autoclass" {
  description = "Enable autoclass to automatically transition objects to appropriate storage classes based on their access pattern. If set to true, storage_class must be set to STANDARD. Defaults to false."
  type        = bool
  default     = false
}

variable "encryption_key" {
  description = "KMS key that will be used for encryption."
  type        = string
  default     = null
}

variable "force_destroy" {
  description = "Optional map to set force destroy keyed by name, defaults to false."
  type        = bool
  default     = false
}

variable "labels" {
  description = "Labels to be attached to all buckets."
  type        = map(string)
  default     = {}
}

variable "lifecycle_rules" {
  description = "Bucket lifecycle rule."
  type = map(object({
    action = object({
      type          = string
      storage_class = optional(string)
    })
    condition = object({
      age                        = optional(number)
      created_before             = optional(string)
      custom_time_before         = optional(string)
      days_since_custom_time     = optional(number)
      days_since_noncurrent_time = optional(number)
      matches_prefix             = optional(list(string))
      matches_storage_class      = optional(list(string)) # STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, DURABLE_REDUCED_AVAILABILITY
      matches_suffix             = optional(list(string))
      noncurrent_time_before     = optional(string)
      num_newer_versions         = optional(number)
      with_state                 = optional(string) # "LIVE", "ARCHIVED", "ANY"
    })
  }))
  default  = {}
  nullable = false
  validation {
    condition = alltrue([
      for k, v in var.lifecycle_rules : v.action != null && v.condition != null
    ])
    error_message = "Lifecycle rules action and condition cannot be null."
  }
  validation {
    condition = alltrue([
      for k, v in var.lifecycle_rules : contains(
        ["Delete", "SetStorageClass", "AbortIncompleteMultipartUpload"],
        v.action.type
      )
    ])
    error_message = "Lifecycle rules action type has unsupported value."
  }
  validation {
    condition = alltrue([
      for k, v in var.lifecycle_rules :
      v.action.type != "SetStorageClass"
      ||
      v.action.storage_class != null
    ])
    error_message = "Lifecycle rules with action type SetStorageClass require a storage class."
  }
}

variable "location" {
  description = "Bucket location."
  type        = string
  default     = "US"
}

variable "name" {
  description = "Bucket name suffix."
  type        = string
}

variable "notification_config" {
  description = "GCS Notification configuration."
  type = object({
    enabled            = bool
    payload_format     = string
    topic_name         = string
    sa_email           = string
    event_types        = optional(list(string))
    custom_attributes  = optional(map(string))
    object_name_prefix = optional(string)
  })
  default = null
}

variable "prefix" {
  description = "Optional prefix used to generate the bucket name."
  type        = string
  default     = null
  validation {
    condition     = var.prefix != ""
    error_message = "Prefix cannot be empty, please use null instead."
  }
}

variable "project_id" {
  description = "Bucket project id."
  type        = string
}

variable "public_access_prevention" {
  description = "Prevents public access to a bucket. Acceptable values are inherited or enforced. If inherited, the bucket uses public access prevention, only if the bucket is subject to the public access prevention organization policy constraint."
  type        = string
  default     = null
}

variable "requester_pays" {
  description = "Enables Requester Pays on a storage bucket."
  type        = bool
  default     = null
}

variable "retention_policy" {
  description = "Bucket retention policy."
  type = object({
    retention_period = number
    is_locked        = optional(bool)
  })
  default = null
}

variable "soft_delete_retention" {
  description = "The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted. Set to 0 to override the default and disable."
  type        = number
  default     = null
}

variable "storage_class" {
  description = "Bucket storage class."
  type        = string
  default     = "MULTI_REGIONAL"
  validation {
    condition     = contains(["STANDARD", "MULTI_REGIONAL", "REGIONAL", "NEARLINE", "COLDLINE", "ARCHIVE"], var.storage_class)
    error_message = "Storage class must be one of STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  }
}

variable "tag_bindings" {
  description = "Tag bindings for this folder, in key => tag value id format."
  type        = map(string)
  default     = null
}

variable "uniform_bucket_level_access" {
  description = "Allow using object ACLs (false) or not (true, this is the recommended behavior) , defaults to true (which is the recommended practice, but not the behavior of storage API)."
  type        = bool
  default     = true
}

variable "versioning" {
  description = "Enable versioning, defaults to false."
  type        = bool
  default     = false
}