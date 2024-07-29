output "dashboards-id" {
  #value = datadog_dashboard_json.dashboard_json[*].id
  value = [
    for dashboard in datadog_dashboard_json.dashboard_json : dashboard.id
  ]
}

# Realiza o output de todas as possibilidades de permissions
#output "datadog_permissions" {
#  value = data.datadog_permissions.default.permissions
#}