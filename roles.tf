# https://docs.datadoghq.com/account_management/rbac/permissions/

data "datadog_permissions" "default" {}

resource "datadog_role" "dashboard_creator" {
  name = "dashboard-creator"

  permission {
    id = data.datadog_permissions.default.permissions.dashboards_write
  }
}