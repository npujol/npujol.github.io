---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---


# State

## Contents

- [[tf-Remote-State]]
- [[tf-State-Locking]]
- [[tf-Import-Existing-Resources]]
- [[tf-Splitting-State-Files]]
- [[tf-Versioning]]
- [[tf-Sensitive-Data]]

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/state@jas0XILqCUXjWRk3ZoSEO)__

Terraform state is a crucial concept in Terraform that tracks the current state of your managed infrastructure. It’s typically stored in a file named `terraform.tfstate`, which maps real-world resources to your configuration. This state allows Terraform to determine which changes are necessary to achieve the desired configuration. It contains sensitive information and should be stored securely, often in remote backends like S3 or Terraform Cloud. The state can be manipulated using terraform state commands for tasks like moving resources between states or removing resources from management. Proper state management is essential for collaborative work, ensuring consistency across team members and enabling Terraform to accurately plan and apply changes to your infrastructure.

---

- [officialState](https://developer.hashicorp.com/terraform/language/state)
- [articlePurpose of Terraform state](https://developer.hashicorp.com/terraform/language/state/purpose)
- [videoManaging Terraform state files](https://www.youtube.com/watch?v=UDBVCzg2IRo)

## Best Practices for State

Terraform state best practices focus on security, consistency, and collaboration.

- Store state files remotely in encrypted, version-controlled backends like S3 or Terraform Cloud to enable team access and enhance security.
- Implement state locking to prevent concurrent modifications. Use workspaces or separate state files for different environments.
- Regularly back up state files and enable versioning for rollback capabilities.
- Avoid storing sensitive data directly in state; instead, use secret management tools.
- Keep state files separate from your Terraform configuration in version control.
- Utilize state subcommands for maintenance and troubleshooting. Implement access controls to restrict state file access.
- Regularly review and clean up unused resources in the state.

These practices help maintain a secure, efficient, and manageable Terraform workflow, especially in team environments and complex infrastructures.

- [articleManaging Terraform State – Best Practices & Examples](https://spacelift.io/blog/terraform-state)
- [articleBest Practices for Terraform State File Management](https://www.cloudthat.com/resources/blog/best-practices-for-terraform-state-file-management)
- [videoManaging Terraform State Files - What are your options?](https://www.youtube.com/watch?v=keiIyarEKf8)
