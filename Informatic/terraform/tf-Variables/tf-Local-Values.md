---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Local Values

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/local> values@1mFih8uFs3Lc-1PLgwiAU)__

## Declaring a Local Value

A set of related local values can be declared together in a single `locals` block:

```terraform
locals {
  service_name = "forum"
  owner        = "Community Team"
}
```

The expressions in local values are not limited to literal constants; they can also reference other values in the module in order to transform or combine them, including variables, resource attributes, or other local values:

```terraform
locals {
  # Ids for multiple sets of EC2 instances, merged together
  instance_ids = concat(aws_instance.blue.*.id, aws_instance.green.*.id)
}

locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service = local.service_name
    Owner   = local.owner
  }
}
```
