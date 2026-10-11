output "kibana_slos_id" {
  description = "Map of id values across all kibana_slos, keyed the same as var.kibana_slos except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_slos_apm_availability_indicator" {
  description = "Map of apm_availability_indicator values across all kibana_slos, keyed the same as var.kibana_slos except keys with no apm_availability_indicator are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.apm_availability_indicator if v.apm_availability_indicator != null && length(v.apm_availability_indicator) > 0 }
}
output "kibana_slos_apm_latency_indicator" {
  description = "Map of apm_latency_indicator values across all kibana_slos, keyed the same as var.kibana_slos except keys with no apm_latency_indicator are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.apm_latency_indicator if v.apm_latency_indicator != null && length(v.apm_latency_indicator) > 0 }
}
output "kibana_slos_artifacts" {
  description = "Map of artifacts values across all kibana_slos, keyed the same as var.kibana_slos except keys with no artifacts are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.artifacts if v.artifacts != null && length(v.artifacts) > 0 }
}
output "kibana_slos_budgeting_method" {
  description = "Map of budgeting_method values across all kibana_slos, keyed the same as var.kibana_slos except keys with no budgeting_method are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.budgeting_method if v.budgeting_method != null && length(v.budgeting_method) > 0 }
}
output "kibana_slos_description" {
  description = "Map of description values across all kibana_slos, keyed the same as var.kibana_slos except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_slos_enabled" {
  description = "Map of enabled values across all kibana_slos, keyed the same as var.kibana_slos except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.enabled if v.enabled != null }
}
output "kibana_slos_group_by" {
  description = "Map of group_by values across all kibana_slos, keyed the same as var.kibana_slos except keys with no group_by are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.group_by if v.group_by != null && length(v.group_by) > 0 }
}
output "kibana_slos_histogram_custom_indicator" {
  description = "Map of histogram_custom_indicator values across all kibana_slos, keyed the same as var.kibana_slos except keys with no histogram_custom_indicator are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.histogram_custom_indicator if v.histogram_custom_indicator != null && length(v.histogram_custom_indicator) > 0 }
}
output "kibana_slos_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_slos, keyed the same as var.kibana_slos except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_slos_kql_custom_indicator" {
  description = "Map of kql_custom_indicator values across all kibana_slos, keyed the same as var.kibana_slos except keys with no kql_custom_indicator are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.kql_custom_indicator if v.kql_custom_indicator != null && length(v.kql_custom_indicator) > 0 }
}
output "kibana_slos_metric_custom_indicator" {
  description = "Map of metric_custom_indicator values across all kibana_slos, keyed the same as var.kibana_slos except keys with no metric_custom_indicator are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.metric_custom_indicator if v.metric_custom_indicator != null && length(v.metric_custom_indicator) > 0 }
}
output "kibana_slos_name" {
  description = "Map of name values across all kibana_slos, keyed the same as var.kibana_slos except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_slos_objective" {
  description = "Map of objective values across all kibana_slos, keyed the same as var.kibana_slos except keys with no objective are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.objective if v.objective != null && length(v.objective) > 0 }
}
output "kibana_slos_settings" {
  description = "Map of settings values across all kibana_slos, keyed the same as var.kibana_slos except keys with no settings are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.settings if v.settings != null && length(v.settings) > 0 }
}
output "kibana_slos_slo_id" {
  description = "Map of slo_id values across all kibana_slos, keyed the same as var.kibana_slos except keys with no slo_id are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.slo_id if v.slo_id != null && length(v.slo_id) > 0 }
}
output "kibana_slos_space_id" {
  description = "Map of space_id values across all kibana_slos, keyed the same as var.kibana_slos except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_slos_tags" {
  description = "Map of tags values across all kibana_slos, keyed the same as var.kibana_slos except keys with no tags are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kibana_slos_time_window" {
  description = "Map of time_window values across all kibana_slos, keyed the same as var.kibana_slos except keys with no time_window are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.time_window if v.time_window != null && length(v.time_window) > 0 }
}
output "kibana_slos_timeslice_metric_indicator" {
  description = "Map of timeslice_metric_indicator values across all kibana_slos, keyed the same as var.kibana_slos except keys with no timeslice_metric_indicator are omitted"
  value       = { for k, v in elasticstack_kibana_slo.kibana_slos : k => v.timeslice_metric_indicator if v.timeslice_metric_indicator != null && length(v.timeslice_metric_indicator) > 0 }
}

