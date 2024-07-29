resource datadog_monitor "high_cpu" {
    name               = "High CPU Usage"
    type               = "query alert"
    query              = "avg(last_5m):avg:system.cpu.user{*} by {host} > 10"
    message            = "High CPU usage detected on {{host.name}}.\n ${var.notify_channels}"    
    notify_audit       = true
    notify_no_data     = true
    timeout_h          = 1
    escalation_message = "High CPU usage detected on {{host.name}}."
    renotify_interval  = 120

    monitor_thresholds {
        critical = 10
        warning  = 1
    }    

    tags = [
        "env:prod",
        "team:team-infra"
    ]
}