variable "DATADOG_API_KEY" {
  description = "Datadog API key"  
}

variable "DATADOG_APP_KEY" {
  description = "Datadog APP key"  
}

variable "DD_HOST" {
  description = "Datadog Host"  
}

variable "notify_channels" {
  description = "List of emails to notify"  
  type = string
  default = "@team-infra"
  
}