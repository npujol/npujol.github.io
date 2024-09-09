---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Provisioners

## Contents

- [[When-to-Use]]
- [[Creation-Destroy-Time]]
- [[file-provisioner]]
- [[local-exec-provisioner]]
- [[remote-exec-provisioner]]
- [[Custom-Provisioners]]

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/provisioners@huXZz55P7kVJwTn5BS_Wk)__

Provisioners in Terraform are used to execute scripts or other actions on local or remote machines as part of resource creation or destruction. They allow for configuration management tasks that go beyond Terraform’s declarative model. Provisioners can run scripts, upload files, or execute other tools on resources after they’re created. Common types include local-exec (runs commands on the machine running Terraform) and remote-exec (runs commands on a remote resource). While powerful, provisioners should be used sparingly as they can make Terraform runs less predictable and idempotent. They’re often seen as a last resort when native Terraform resources or provider capabilities are insufficient. Best practices suggest using dedicated configuration management tools like Ansible or Chef instead of heavy reliance on provisioners. When used, provisioners should be designed to be idempotent and handle potential failures gracefully.
