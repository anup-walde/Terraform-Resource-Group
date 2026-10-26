resource_groups = {
  app = {
    name     = "rg-test-app"
    location = "East US"
    tags = {
      environment = "test"
      workload    = "app"
    }
  }
  network = {
    name     = "rg-test-network"
    location = "East US"
    tags = {
      environment = "test"
      workload    = "network"
    }
  }
}
