---
tags:

- ready
- online
- terraform
- IaC
- infrastructure

---

# Resource Lifecycle

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/resource> lifecycle@76kp98rvph_8UOXZR-PBC)__

- <https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle>

The [Resource Behavior](https://developer.hashicorp.com/terraform/language/resources/behavior) page describes the general lifecycle for resources. Some details of that behavior can be customized using the special nested `lifecycle` block within a resource block body

```terraform
resource "azurerm_resource_group" "example" {
  # ...

  lifecycle {
    create_before_destroy = true
  }
}
```
