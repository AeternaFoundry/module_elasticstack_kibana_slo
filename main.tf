resource "elasticstack_kibana_slo" "kibana_slos" {
  for_each = var.kibana_slos

  budgeting_method = each.value.budgeting_method
  description      = each.value.description
  name             = each.value.name
  artifacts        = each.value.artifacts
  enabled          = each.value.enabled
  group_by         = each.value.group_by
  slo_id           = each.value.slo_id
  space_id         = each.value.space_id
  tags             = each.value.tags
  timeouts         = each.value.timeouts

  dynamic "apm_availability_indicator" {
    for_each = each.value.apm_availability_indicator != null ? each.value.apm_availability_indicator : []
    content {
      environment      = apm_availability_indicator.value.environment
      filter           = apm_availability_indicator.value.filter
      index            = apm_availability_indicator.value.index
      service          = apm_availability_indicator.value.service
      transaction_name = apm_availability_indicator.value.transaction_name
      transaction_type = apm_availability_indicator.value.transaction_type
    }
  }

  dynamic "apm_latency_indicator" {
    for_each = each.value.apm_latency_indicator != null ? each.value.apm_latency_indicator : []
    content {
      environment      = apm_latency_indicator.value.environment
      filter           = apm_latency_indicator.value.filter
      index            = apm_latency_indicator.value.index
      service          = apm_latency_indicator.value.service
      threshold        = apm_latency_indicator.value.threshold
      transaction_name = apm_latency_indicator.value.transaction_name
      transaction_type = apm_latency_indicator.value.transaction_type
    }
  }

  dynamic "histogram_custom_indicator" {
    for_each = each.value.histogram_custom_indicator != null ? each.value.histogram_custom_indicator : []
    content {
      data_view_id = histogram_custom_indicator.value.data_view_id
      filter       = histogram_custom_indicator.value.filter
      dynamic "good" {
        for_each = histogram_custom_indicator.value.good != null ? histogram_custom_indicator.value.good : []
        content {
          aggregation = good.value.aggregation
          field       = good.value.field
          filter      = good.value.filter
          from        = good.value.from
          to          = good.value.to
        }
      }
      index           = histogram_custom_indicator.value.index
      timestamp_field = histogram_custom_indicator.value.timestamp_field
      dynamic "total" {
        for_each = histogram_custom_indicator.value.total != null ? histogram_custom_indicator.value.total : []
        content {
          aggregation = total.value.aggregation
          field       = total.value.field
          filter      = total.value.filter
          from        = total.value.from
          to          = total.value.to
        }
      }
    }
  }

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }

  dynamic "kql_custom_indicator" {
    for_each = each.value.kql_custom_indicator != null ? each.value.kql_custom_indicator : []
    content {
      data_view_id    = kql_custom_indicator.value.data_view_id
      filter          = kql_custom_indicator.value.filter
      filter_kql      = kql_custom_indicator.value.filter_kql
      good            = kql_custom_indicator.value.good
      good_kql        = kql_custom_indicator.value.good_kql
      index           = kql_custom_indicator.value.index
      timestamp_field = kql_custom_indicator.value.timestamp_field
      total           = kql_custom_indicator.value.total
      total_kql       = kql_custom_indicator.value.total_kql
    }
  }

  dynamic "metric_custom_indicator" {
    for_each = each.value.metric_custom_indicator != null ? each.value.metric_custom_indicator : []
    content {
      data_view_id = metric_custom_indicator.value.data_view_id
      filter       = metric_custom_indicator.value.filter
      dynamic "good" {
        for_each = metric_custom_indicator.value.good != null ? metric_custom_indicator.value.good : []
        content {
          equation = good.value.equation
          dynamic "metrics" {
            for_each = good.value.metrics != null ? good.value.metrics : []
            content {
              aggregation = metrics.value.aggregation
              field       = metrics.value.field
              filter      = metrics.value.filter
              name        = metrics.value.name
            }
          }
        }
      }
      index           = metric_custom_indicator.value.index
      timestamp_field = metric_custom_indicator.value.timestamp_field
      dynamic "total" {
        for_each = metric_custom_indicator.value.total != null ? metric_custom_indicator.value.total : []
        content {
          equation = total.value.equation
          dynamic "metrics" {
            for_each = total.value.metrics != null ? total.value.metrics : []
            content {
              aggregation = metrics.value.aggregation
              field       = metrics.value.field
              filter      = metrics.value.filter
              name        = metrics.value.name
            }
          }
        }
      }
    }
  }

  dynamic "objective" {
    for_each = each.value.objective != null ? each.value.objective : []
    content {
      target           = objective.value.target
      timeslice_target = objective.value.timeslice_target
      timeslice_window = objective.value.timeslice_window
    }
  }

  dynamic "settings" {
    for_each = each.value.settings != null ? each.value.settings : []
    content {
      frequency                = settings.value.frequency
      prevent_initial_backfill = settings.value.prevent_initial_backfill
      sync_delay               = settings.value.sync_delay
      sync_field               = settings.value.sync_field
    }
  }

  dynamic "time_window" {
    for_each = each.value.time_window != null ? each.value.time_window : []
    content {
      duration = time_window.value.duration
      type     = time_window.value.type
    }
  }

  dynamic "timeslice_metric_indicator" {
    for_each = each.value.timeslice_metric_indicator != null ? each.value.timeslice_metric_indicator : []
    content {
      data_view_id = timeslice_metric_indicator.value.data_view_id
      filter       = timeslice_metric_indicator.value.filter
      index        = timeslice_metric_indicator.value.index
      dynamic "metric" {
        for_each = timeslice_metric_indicator.value.metric != null ? timeslice_metric_indicator.value.metric : []
        content {
          comparator = metric.value.comparator
          equation   = metric.value.equation
          dynamic "metrics" {
            for_each = metric.value.metrics != null ? metric.value.metrics : []
            content {
              aggregation = metrics.value.aggregation
              field       = metrics.value.field
              filter      = metrics.value.filter
              name        = metrics.value.name
              percentile  = metrics.value.percentile
            }
          }
          threshold = metric.value.threshold
        }
      }
      timestamp_field = timeslice_metric_indicator.value.timestamp_field
    }
  }
}

