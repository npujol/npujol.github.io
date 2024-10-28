---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# lifecycle

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/lifecycle@0A8zTuCXVmcruJdfH3cNu)__

## lifecycle

The lifecycle meta-argument in Terraform customizes the behavior of resources during creation, update, and deletion. It includes settings such as create\_before\_destroy, which ensures a new resource is created before the old one is destroyed, preventing downtime. prevent\_destroy protects resources from accidental deletion, and ignore\_changes specifies attributes to ignore during updates, allowing external modifications without triggering Terraform changes. These options provide fine-grained control over resource management, ensuring that the desired state of infrastructure is maintained with minimal disruption and precise handling of resource lifecycles.

* [@official@Terraform Docs - lifecycle](https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle)
* [@article@Terraform Resource Lifecycle](https://spacelift.io/blog/terraform-resource-lifecycle)
* [@article@Understanding the Lifecycle Block](https://dev.to/pwd9000/terraform-understanding-the-lifecycle-block-4f6e)
