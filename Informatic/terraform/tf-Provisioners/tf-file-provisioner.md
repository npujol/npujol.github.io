---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# file provisioner

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/file> provisioner@Qch8k6e4pS8OlmG_sI0hH)__

The Terraform file provisioner is used to copy files or directories from the machine running Terraform to a newly created resource. It’s useful for tasks like uploading configuration files, scripts, or other necessary data to remote systems. The file provisioner can copy a single file or recursively copy directories. It supports both source and content arguments, allowing for either file-based or inline content transfers. This provisioner is often used in conjunction with remote-exec provisioners to execute uploaded scripts. While convenient for simple file transfers, it’s important to consider security implications, especially when dealing with sensitive data. For more complex or large-scale file management tasks, dedicated configuration management tools are often preferred. The file provisioner is best used for small, straightforward file transfers needed to bootstrap or configure newly created resources.

---

- [officialTerraform file provisioner](https://developer.hashicorp.com/terraform/language/resources/provisioners/file)
- [articleThe file provisioner](https://learning-ocean.com/tutorials/terraform/terraform-file-provisioner/)
