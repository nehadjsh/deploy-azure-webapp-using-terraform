variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "app_name" {
  description = "Name of the Web App"
  type        = string
}

variable "docker_image" {
  description = "Docker image from Docker Hub"
  type        = string
}

variable "plan_sku" {
  description = "SKU for the App Service Plan"
  type        = string
  default     = "P2v2" 
}
