/* resource "azurerm_kubernetes_cluster_node_pool" "efk" {
  name                  = "efk"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_B2ms"
  max_pods              = 240
  os_sku                = "Ubuntu"
  node_count            = 1

  tags = {
    env  = "dev"
    role = "efk"
    tier = "application"
  }
  node_labels = {
    app1 = "elastic"
    app2 = "kibana"
    role = "efk"
    env  = "dev"
  }
} */

resource "azurerm_kubernetes_cluster_node_pool" "wp" {
  name                  = "wp"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_B2ms"
  max_pods              = 240
  os_sku                = "Ubuntu"
  node_count            = 1

  tags = {
    env  = "dev"
    role = "wp"
    tier = "application"
  }
  node_labels = {
    role = "wp"
    env  = "dev"
  }
}