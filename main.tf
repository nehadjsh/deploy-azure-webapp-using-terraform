# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}



resource "azurerm_service_plan" "service_plan" {
  name                ="${var.app_name}-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = var.plan_sku
}



# Create Linux Web App
resource "azurerm_linux_web_app" "web_app" {
  name                = var.app_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {
    # You can leave this empty, as Azure will handle configuration automatically
    always_on = true
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    DOCKER_CUSTOM_IMAGE_NAME            = var.docker_image
    DOCKER_ENABLE_CI                    = "false"
  }

  https_only = true

  identity {
    type = "SystemAssigned"
  }
}



