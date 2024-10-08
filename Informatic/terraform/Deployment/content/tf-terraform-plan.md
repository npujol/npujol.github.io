---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# terraform plan

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/terraform> plan@LDxAXmTKyvogvgUpvN5pT)__

`terraform plan` is a command that creates an execution plan, showing what changes Terraform will make to your infrastructure. It compares the current state with the desired state defined in configuration files and outputs a detailed list of resources to be created, modified, or deleted. Importantly, it doesn’t make any actual changes to infrastructure, instead helping identify potential issues before applying changes. The plan can be saved to a file for later execution or review. This command is crucial for reviewing changes before implementation, especially in complex environments, and is commonly used in code reviews and CI/CD pipelines to validate proposed infrastructure modifications. While terraform plan provides a preview, it’s worth noting that it can’t always predict every change due to external factors or API limitations.

---

- [courseCreate a Terraform plan](https://developer.hashicorp.com/terraform/tutorials/cli/plan)
- [articleTerraform plan command and how it works](https://spacelift.io/blog/terraform-plan)
- [videoTerraform - Terraform Plan](https://www.youtube.com/watch?v=9v08h-Oaelo)
