---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# depends_on

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/depends_on@EIsex6gNHDRYHn0o2spzi)__

## depends\_on

The depends\_on meta-argument in Terraform is used to explicitly declare dependencies between resources, ensuring that one or more resources are created or destroyed only after the specified dependent resources have been successfully applied. This is crucial for managing resource dependencies that are not automatically detected by Terraform’s implicit dependency analysis. By using depends\_on, you can enforce the correct order of resource creation, modification, or destruction, which is particularly useful in complex infrastructure setups where certain resources must exist or be configured before others can be effectively managed. This meta-argument enhances the reliability and predictability of your Terraform configurations

* [@official@Terraform Docs - depends\_on](https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on)
* [@article@How to Use Terraform depends\_on](https://spacelift.io/blog/terraform-depends-on)
* [@video@How to use Terraform depends\_on meta tag?](https://www.youtube.com/watch?v=v0Qt-ltvmXU)
