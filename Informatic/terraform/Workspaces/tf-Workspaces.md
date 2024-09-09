---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Workspaces

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/workspaces@O194eWh529jj4VDhKxNSj)__

Terraform workspaces allow managing multiple distinct sets of infrastructure resources within a single configuration. They provide a way to create separate instances of state for the same configuration, enabling users to maintain different environments (like development, staging, and production) or experiment with changes without affecting the main infrastructure. Each workspace has its own state file, allowing for isolated management of resources. Workspaces are particularly useful for testing changes before applying them to production or for managing slight variations in configuration across different environments. They can be easily switched between using Terraform CLI commands. For more significant environment differences, separate configuration directories or state files might be more appropriate.

- [officialWorkspaces](https://developer.hashicorp.com/terraform/language/state/workspaces)
- [articleWhat are Terraform workspaces?](https://spacelift.io/blog/terraform-workspaces)
- [videoStructuring Repositories for Terraform Workspaces - Hashicorp](https://www.youtube.com/watch?v=IDLGpkRmDXg)
