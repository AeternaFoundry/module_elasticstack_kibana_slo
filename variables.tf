variable "kibana_slos" {
  description = <<EOT
Map of kibana_slos, attributes below
Required:
    - budgeting_method
    - description
    - name
Optional:
    - artifacts
    - enabled
    - group_by
    - slo_id
    - space_id
    - tags
    - timeouts
    - apm_availability_indicator (block):
        - environment (required)
        - filter (optional)
        - index (required)
        - service (required)
        - transaction_name (required)
        - transaction_type (required)
    - apm_latency_indicator (block):
        - environment (required)
        - filter (optional)
        - index (required)
        - service (required)
        - threshold (required)
        - transaction_name (required)
        - transaction_type (required)
    - histogram_custom_indicator (block):
        - data_view_id (optional)
        - filter (optional)
        - good (optional, block):
            - aggregation (required)
            - field (required)
            - filter (optional)
            - from (optional)
            - to (optional)
        - index (required)
        - timestamp_field (optional)
        - total (optional, block):
            - aggregation (required)
            - field (required)
            - filter (optional)
            - from (optional)
            - to (optional)
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
    - kql_custom_indicator (block):
        - data_view_id (optional)
        - filter (optional)
        - filter_kql (optional, block):
            - filters (optional, block):
                - query (optional)
            - kql_query (optional)
        - good (optional)
        - good_kql (optional, block):
            - filters (optional, block):
                - query (optional)
            - kql_query (optional)
        - index (required)
        - timestamp_field (optional)
        - total (optional)
        - total_kql (optional, block):
            - filters (optional, block):
                - query (optional)
            - kql_query (optional)
    - metric_custom_indicator (block):
        - data_view_id (optional)
        - filter (optional)
        - good (optional, block):
            - equation (required)
            - metrics (optional, block):
                - aggregation (required)
                - field (optional)
                - filter (optional)
                - name (required)
        - index (required)
        - timestamp_field (optional)
        - total (optional, block):
            - equation (required)
            - metrics (optional, block):
                - aggregation (required)
                - field (optional)
                - filter (optional)
                - name (required)
    - objective (block):
        - target (required)
        - timeslice_target (optional)
        - timeslice_window (optional)
    - settings (block):
        - frequency (optional)
        - prevent_initial_backfill (optional)
        - sync_delay (optional)
        - sync_field (optional)
    - time_window (block):
        - duration (required)
        - type (required)
    - timeslice_metric_indicator (block):
        - data_view_id (optional)
        - filter (optional)
        - index (required)
        - metric (optional, block):
            - comparator (required)
            - equation (required)
            - metrics (optional, block):
                - aggregation (required)
                - field (optional)
                - filter (optional)
                - name (required)
                - percentile (optional)
            - threshold (required)
        - timestamp_field (required)
EOT

  type = map(object({
    budgeting_method = string
    description      = string
    name             = string
    artifacts = optional(object({
      dashboards = optional(list(object({
        id = string
      })))
    }))
    enabled  = optional(bool)
    group_by = optional(list(string))
    slo_id   = optional(string)
    space_id = optional(string)
    tags     = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    apm_availability_indicator = optional(list(object({
      environment      = string
      filter           = optional(string)
      index            = string
      service          = string
      transaction_name = string
      transaction_type = string
    })))
    apm_latency_indicator = optional(list(object({
      environment      = string
      filter           = optional(string)
      index            = string
      service          = string
      threshold        = number
      transaction_name = string
      transaction_type = string
    })))
    histogram_custom_indicator = optional(list(object({
      data_view_id = optional(string)
      filter       = optional(string)
      good = optional(list(object({
        aggregation = string
        field       = string
        filter      = optional(string)
        from        = optional(number)
        to          = optional(number)
      })))
      index           = string
      timestamp_field = optional(string)
      total = optional(list(object({
        aggregation = string
        field       = string
        filter      = optional(string)
        from        = optional(number)
        to          = optional(number)
      })))
    })))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
    kql_custom_indicator = optional(list(object({
      data_view_id = optional(string)
      filter       = optional(string)
      filter_kql = optional(object({
        filters = optional(list(object({
          query = optional(string)
        })))
        kql_query = optional(string)
      }))
      good = optional(string)
      good_kql = optional(object({
        filters = optional(list(object({
          query = optional(string)
        })))
        kql_query = optional(string)
      }))
      index           = string
      timestamp_field = optional(string)
      total           = optional(string)
      total_kql = optional(object({
        filters = optional(list(object({
          query = optional(string)
        })))
        kql_query = optional(string)
      }))
    })))
    metric_custom_indicator = optional(list(object({
      data_view_id = optional(string)
      filter       = optional(string)
      good = optional(list(object({
        equation = string
        metrics = optional(list(object({
          aggregation = string
          field       = optional(string)
          filter      = optional(string)
          name        = string
        })))
      })))
      index           = string
      timestamp_field = optional(string)
      total = optional(list(object({
        equation = string
        metrics = optional(list(object({
          aggregation = string
          field       = optional(string)
          filter      = optional(string)
          name        = string
        })))
      })))
    })))
    objective = optional(list(object({
      target           = number
      timeslice_target = optional(number)
      timeslice_window = optional(string)
    })))
    settings = optional(list(object({
      frequency                = optional(string)
      prevent_initial_backfill = optional(bool)
      sync_delay               = optional(string)
      sync_field               = optional(string)
    })))
    time_window = optional(list(object({
      duration = string
      type     = string
    })))
    timeslice_metric_indicator = optional(list(object({
      data_view_id = optional(string)
      filter       = optional(string)
      index        = string
      metric = optional(list(object({
        comparator = string
        equation   = string
        metrics = optional(list(object({
          aggregation = string
          field       = optional(string)
          filter      = optional(string)
          name        = string
          percentile  = optional(number)
        })))
        threshold = number
      })))
      timestamp_field = string
    })))
  }))
}

