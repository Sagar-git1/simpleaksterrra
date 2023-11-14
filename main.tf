resource "azurerm_resource_group" "myrg" {
  name = var.resource_group_name
  location = var.location
}
resource "azurerm_kubernetes_cluster" "aks" {
  name = var.resource_group_name 
  location = var.location
  resource_group_name = azurerm_resource_group.myrg.name
  dns_prefix = var.dns_prefix
  default_node_pool {
    name = "default"
    vm_size = var.vm_size
    node_count = var.node_count
  }
  identity {
    type = "SystemAssigned"
  }
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

# output "aks_cluster_endpoint" {
#   value = azurerm_kubernetes_cluster.aks.public_endpoint
# }