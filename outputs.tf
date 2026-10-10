output "cloudwatch_event_archives_id" {
  description = "Map of id values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_event_archives_arn" {
  description = "Map of arn values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudwatch_event_archives_description" {
  description = "Map of description values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloudwatch_event_archives_event_pattern" {
  description = "Map of event_pattern values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.event_pattern if v.event_pattern != null && length(v.event_pattern) > 0 }
}
output "cloudwatch_event_archives_event_source_arn" {
  description = "Map of event_source_arn values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.event_source_arn if v.event_source_arn != null && length(v.event_source_arn) > 0 }
}
output "cloudwatch_event_archives_kms_key_identifier" {
  description = "Map of kms_key_identifier values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.kms_key_identifier if v.kms_key_identifier != null && length(v.kms_key_identifier) > 0 }
}
output "cloudwatch_event_archives_name" {
  description = "Map of name values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_event_archives_region" {
  description = "Map of region values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_event_archives_retention_days" {
  description = "Map of retention_days values across all cloudwatch_event_archives, keyed the same as var.cloudwatch_event_archives"
  value       = { for k, v in aws_cloudwatch_event_archive.cloudwatch_event_archives : k => v.retention_days if v.retention_days != null }
}

