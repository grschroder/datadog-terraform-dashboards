resource "datadog_dashboard_json" "dashboard_json" {
  for_each = fileset("${path.module}/dashboards", "*.json")
  dashboard = file("${path.module}/dashboards/${each.key}")
}