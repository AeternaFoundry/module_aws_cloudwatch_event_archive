variable "cloudwatch_event_archives" {
  description = <<EOT
Map of cloudwatch_event_archives, attributes below
Required:
    - event_source_arn
    - name
Optional:
    - description
    - event_pattern
    - kms_key_identifier
    - region
    - retention_days
EOT

  type = map(object({
    event_source_arn   = string
    name               = string
    description        = optional(string)
    event_pattern      = optional(string)
    kms_key_identifier = optional(string)
    region             = optional(string)
    retention_days     = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_event_archives : (
        v.kms_key_identifier == null || ((length(v.kms_key_identifier) >= 0 && length(v.kms_key_identifier) <= 2048) && (can(regex("^[a-zA-Z0-9_\\-/:]*$", v.kms_key_identifier))))
      )
    ])
    error_message = "all of: must be between 0 and 2048 characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

