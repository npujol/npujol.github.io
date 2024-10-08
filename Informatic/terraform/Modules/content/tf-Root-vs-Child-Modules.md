---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Root vs Child Modules

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/root> vs child modules@6W4_akHG9YtvN6dpbZnG-)__

In Terraform, root and child modules refer to different levels of module hierarchy in a configuration. The root module is the main set of configuration files in the working directory where Terraform is executed. It’s the entry point of your Terraform project and typically calls other modules. Child modules, on the other hand, are modules called by the root module or by other modules. They are reusable components that encapsulate specific resource configurations. Root modules define the overall architecture and compose child modules to create the complete infrastructure. Child modules focus on specific, repeatable tasks or resource groups. This hierarchy allows for better organization, reusability, and maintainability of Terraform code, enabling complex infrastructures to be broken down into manageable, modular components.

---

- [officialThe root module](https://developer.hashicorp.com/terraform/language/modules#the-root-module)
- [officialChild modules](https://developer.hashicorp.com/terraform/language/modules#child-modules)
- [articleWhat is the difference between Terraform “Module” and “Child Module”](https://stackoverflow.com/questions/77671412/what-is-the-difference-between-terraform-module-and-child-module)
