module "resource_groups" {
  source   = "../../modules/resource-group"
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location
  tags     = each.value.tags
}
