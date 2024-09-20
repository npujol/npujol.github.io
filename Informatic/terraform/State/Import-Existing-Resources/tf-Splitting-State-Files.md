---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Splitting State Files

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/splitting> state files@a0rUMnYluVUGhyhlDK5S8)__

Splitting Terraform state files involves dividing a large state into smaller, more manageable parts. This is typically done using Terraform workspaces or by organizing resources into separate modules with their own state files. The process helps manage complex infrastructures, improves performance, and allows for more granular access control. To split an existing state, you can use `terraform state mv` to move resources between states, or `terraform state rm` followed by `terraform import` in a new configuration. This approach is beneficial for large projects, enabling teams to work on different parts of infrastructure independently. However, it requires careful planning to manage dependencies between split states. Proper state splitting can lead to more efficient workflows, easier troubleshooting, and better alignment with organizational structures in large-scale Terraform deployments.
Free Resources

---

- [articleHow to split state files](https://support.hashicorp.com/hc/en-us/articles/7955227415059-How-to-Split-State-Files)
- [articleIntroducing terraform-state-split](https://www.shebanglabs.io/moving-terraform-resources-between-different-states/)
- [videoOrganizing Terraform with multiple states](https://www.youtube.com/watch?v=5TfgdKXr45I)
