resource_groups = {
  app = {
    name     = "rg-prod-app"
    location = "East US"
    tags = {
      environment = "prod"
      workload    = "app"
    }
  }
  network = {
    name     = "rg-prod-network"
    location = "East US"
    tags = {
      environment = "prod"
      workload    = "network"
    }
  }
}
