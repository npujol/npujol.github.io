---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Remote State

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/remote> state@pDm08NBVwGf9rAIZC_ZIR)__

Terraform remote state refers to storing the state file in a shared, centralized location rather than locally. This approach enables team collaboration, improves security, and ensures state consistency. Common remote backends include cloud storage services like AWS S3, Azure Blob Storage, or managed services like Terraform Cloud. Remote state allows multiple team members to safely work on the same infrastructure, prevents state file loss, and can provide locking mechanisms to avoid concurrent modifications. It’s configured in the backend block of the Terraform configuration. Remote state can also be used to share outputs between different Terraform configurations, enabling modular infrastructure design. While more complex to set up initially, remote state is considered a best practice for production environments and team-based Terraform workflows.

- [officialRemote state](https://developer.hashicorp.com/terraform/language/state/remote)
- [officialThe terraform_remote_state Data Source](https://developer.hashicorp.com/terraform/language/state/remote-state-data)
- [videoTerraform remote state backends explained](https://www.youtube.com/watch?v=jSoMQCBxp7E)
