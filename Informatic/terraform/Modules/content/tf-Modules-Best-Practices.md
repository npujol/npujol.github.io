---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Modules Best Practices

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/modules> best practices@gTMPK0tfs2JYgoL7SAGW6)__

Terraform module best practices focus on creating reusable, maintainable, and scalable infrastructure components.

- Modules should have a single, clear purpose and be designed with flexibility in mind, using input variables for customization.
- Outputs should be carefully chosen to provide necessary information without over-exposing internal details.
- Version your modules and use semantic versioning to manage changes.
- Keep modules small and focused, adhering to the single responsibility principle.
- Document your modules thoroughly, including usage examples and input/output descriptions.
- Use consistent naming conventions and structure across modules.
- Test modules in isolation and as part of larger systems.
- Avoid hard-coding values that might change across environments.
- Consider using nested modules for complex structures, but be mindful of over-nesting.
- Regularly review and refactor modules to incorporate improvements and maintain best practices.

---

- [officialModule best practices](https://developer.hashicorp.com/terraform/tutorials/modules/module#module-best-practices)
- [articleTerraform Modules Guide: Best Practices & Examples](https://www.env0.com/blog/terraform-modules)
- [videoBest practices for modularizing a Terraform project | PlatformCon 2023](https://www.youtube.com/watch?v=byzwaTng3ac)
