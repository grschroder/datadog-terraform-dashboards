terraform {
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~>3.41"
    }
  }
}

provider "datadog" {
  app_key = var.DATADOG_APP_KEY
  api_key = var.DATADOG_API_KEY
  api_url = var.DD_HOST
}