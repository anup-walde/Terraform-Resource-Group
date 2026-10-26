variable "resource_groups" {
  description = "Resource groups to create in this environment, keyed by a stable Terraform identifier."
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}
