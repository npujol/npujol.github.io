---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Import Existing Resources

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/import> existing resources@L7wAMGi_yU-Bbc9fXlmxZ)__

terraform state import is a command used to bring existing resources under Terraform management. It allows you to add resources that were created outside of Terraform (e.g., manually or by other tools) into your Terraform state. The command takes two main arguments: the Terraform resource address and the real-world resource identifier. When executed, it adds the resource to the state file without modifying the actual infrastructure. This is useful for adopting Terraform in environments with existing resources, or for recovering from scenarios where state and reality have diverged. After importing, you need to write the corresponding configuration in your Terraform files to match the imported resource.

In Terraform v1.5.0 and later you can also create `import` blocks in any Terraform configuration file.

---

- [officialTerraform import command](https://developer.hashicorp.com/terraform/cli/import)
- [articleTerraform Import: What it is and how to use it](https://terrateam.io/blog/terraform-import)
- [videoExploring the Import Block in Terraform 1.5](https://www.youtube.com/watch?v=znfh_00EDZ0)