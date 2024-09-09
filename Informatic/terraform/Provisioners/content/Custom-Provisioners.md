---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Custom Provisioners

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/custom> provisioners@HEr-BBxE3jRKTqRnguds1)__

Terraform custom provisioners allow developers to extend Terraform’s provisioning capabilities beyond the built-in options. These are created using Go programming language and the Terraform plugin SDK. Custom provisioners can perform specialized tasks tailored to specific infrastructure needs or organizational requirements. They follow the same lifecycle as built-in provisioners, executing during resource creation or destruction.

Developing custom provisioners requires a deep understanding of Terraform’s architecture and Go programming. They’re useful for integrating Terraform with proprietary systems or implementing complex, organization-specific provisioning logic. However, custom provisioners should be approached cautiously, as they increase maintenance overhead and can complicate Terraform upgrades. In many cases, it’s preferable to use existing provisioners or separate configuration management tools unless there’s a compelling need for custom functionality.
Free Resources

---

- [officialTerraform provisioners](https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax)
- [articleTerraform provisioners - Why you should avoid them](https://spacelift.io/blog/terraform-provisioners)
