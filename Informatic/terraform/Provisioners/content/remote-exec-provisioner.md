---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# remote-exec provisioner

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/remote-exec> provisioner@JQE3_KakBXZdMVP_pPFNS)__

The remote-exec provisioner in Terraform is used to invoke scripts directly on a remote resource after it has been created. This provisioner is commonly used for tasks like software installation, configuration, or any other setup required on the newly created resource. It can run either a list of commands or a script file on the remote system. The remote-exec provisioner requires a connection block to specify how to access the remote system, typically using SSH for Linux or WinRM for Windows. While useful for initial setup tasks, it’s generally recommended to use this provisioner sparingly and prefer more robust configuration management tools for complex or ongoing management tasks. Care should be taken to ensure that scripts run by remote-exec are idempotent and handle potential network issues or other failures gracefully.
Free Resources

---

- [officialRemote-exec provisioner](https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec)
- [articleTerraform remote-exec provisioner](https://learning-ocean.com/tutorials/terraform/terraform-remote-exec-provisioner/)
- [videoTerraform - remote-exec](https://www.youtube.com/watch?v=kjDXbGeLvRw)
