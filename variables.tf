variable "healthbots" {
  description = <<EOT
Map of healthbots, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.healthbots : (
        length(v.name) >= 2
      )
    ])
    error_message = "[from validate.HealthbotName: invalid when len(value) < 2]"
  }
  validation {
    condition = alltrue([
      for k, v in var.healthbots : (
        length(v.name) <= 64
      )
    ])
    error_message = "[from validate.HealthbotName: invalid when len(value) > 64]"
  }
  validation {
    condition = alltrue([
      for k, v in var.healthbots : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.healthbots : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.healthbots : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.healthbots : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

