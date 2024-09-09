---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Terraform content

## Contents

- [[tf-Introduction]]
- [[tf-Project-Initialization]]
- [[tf-Providers]]
- [[tf-Hashicorp-Config-Language-HCL]]
- [[tf-Resources]]
- [[tf-Variables]]
- [[tf-Outputs]]
- [[tf-Format-Validate]]
- [[tf-Deployment]]
- [[tf-Inspect-Modify-State]]
- [[tf-Clean-Up]]
- [[tf-State-content]]
- [[tf-Best-Practices-for-State]]
- [[tf-Modules]]
- [[tf-Provisioners]]
- [[tf-Data-Sources]]
- [[tf-Template-Files]]
- [[tf-Workspaces]]
- [[tf-CI-CD-Integration]]
- [[tf-Testing]]
- [[tf-Scaling-Terraform]]
- [[tf-Security]]

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/)__

## HCP

HCP (HashiCorp Cloud Platform) is a fully managed platform that provides HashiCorp products as a service, including Terraform. It offers a centralized way to provision, secure, connect, and run any infrastructure for any application. HCP integrates seamlessly with Terraform, providing enhanced capabilities for managing infrastructure at scale. Key features include automated workflows, centralized state management, and secure remote operations. It offers built-in collaboration tools, making it easier for teams to work together on infrastructure projects. HCP provides governance and policy enforcement capabilities, allowing organizations to maintain compliance and security standards across their infrastructure. With its integration of other HashiCorp tools like Vault for secrets management and Consul for service networking, HCP creates a comprehensive ecosystem for cloud infrastructure management. This platform is particularly beneficial for organizations looking to streamline their infrastructure operations, enhance security, and maintain consistency across multi-cloud environments.

### What and when to use HCP?

HashiCorp Cloud Platform (HCP) is best used when organizations need a managed, scalable solution for their infrastructure-as-code practices. It’s particularly valuable for teams seeking to streamline operations across multi-cloud environments, enhance collaboration, and maintain consistent governance. HCP is ideal when there’s a need for centralized management of Terraform workflows, secure remote operations, and integrated secrets management. It’s beneficial for large enterprises or growing teams that require robust access controls, policy enforcement, and audit capabilities. HCP should be considered when the complexity of self-managing HashiCorp tools becomes a burden, or when there’s a desire to reduce operational overhead. It’s also useful when organizations want to leverage the synergies between different HashiCorp products like Terraform, Vault, and Consul in a unified, managed environment. The platform is most effective when scaling infrastructure management needs outgrow the capabilities of standalone Terraform implementations.
Free Resources

---

- [officialUse Cases](https://developer.hashicorp.com/terraform/intro/use-cases)

### Enterprise Features

HashiCorp Cloud Platform (HCP) offers several enterprise-grade features designed to enhance large-scale infrastructure management:

1. Centralized workflow management for Terraform operations
2. Advanced role-based access control (RBAC) for fine-grained permissions
3. Policy as Code with Sentinel for governance and compliance
4. Private network connectivity for secure access to cloud resources
5. Audit logging for comprehensive tracking of all platform activities
6. Integrated secrets management with Vault
7. Service networking capabilities through Consul
8. Multi-cloud and hybrid cloud support
9. Scalable remote state management
10. Cost estimation and optimization tools
11. Customizable policy libraries for security and compliance
12. Single sign-on (SSO) and identity federation
13. API-driven automation for infrastructure provisioning
14. Collaborative features for team-based infrastructure development
15. Continuous compliance monitoring and reporting

These features collectively provide a robust, secure, and scalable environment for enterprise-level infrastructure management and DevOps practices.

- [officialHCP Website](https://www.hashicorp.com/cloud)
- [articleHCP Terraform Plans and Features](https://developer.hashicorp.com/terraform/cloud-docs/overview)
- [videoHow does The Infrastructure Cloud work?](https://www.youtube.com/watch?v=zWWGsJrWj5E)

### Authentication

HCP (HashiCorp Cloud Platform) authentication provides secure access management for its services, including Terraform Cloud. It utilizes a comprehensive identity and access management system that supports multiple authentication methods. These include username/password combinations, single sign-on (SSO) integration with popular identity providers, and API tokens for programmatic access. HCP supports SAML 2.0 for enterprise-grade SSO, allowing seamless integration with existing identity management systems. For machine-to-machine communication, HCP offers service principal authentication, enabling secure, automated interactions with HCP services. The platform also provides fine-grained role-based access control (RBAC), allowing administrators to define and manage user permissions across different resources and operations.
Free Resources

---

- [officialhcp auth login](https://developer.hashicorp.com/hcp/docs/cli/commands/auth/login)
- [GitHubhashicorp/hcp-auth-login](https://github.com/hashicorp/hcp-auth-action)
- [articleAuthenticate with HCP](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/guides/auth)

### Workspaces

HCP workspaces, particularly in the context of Terraform Cloud, provide isolated environments for managing different sets of infrastructure. Each workspace is associated with a specific Terraform configuration and maintains its own state file, variables, and access controls. Workspaces enable teams to organize and separate infrastructure based on projects, environments, or teams. They support collaborative workflows by allowing multiple team members to work on the same infrastructure while maintaining version control and change history. HCP workspaces offer features like remote state management, secure variable storage, and integration with version control systems. They also provide run triggers for automating workflows across dependent infrastructures. With built-in access controls, organizations can enforce least-privilege principles by granting specific permissions to users or teams for each workspace.

- [officialWorkspaces](https://developer.hashicorp.com/terraform/cloud-docs/workspaces)
- [articleOrganize workspaces with projects](https://developer.hashicorp.com/terraform/tutorials/cloud/projects)
- [videoOrganize your Terraform Cloud workspaces using Projects](https://www.youtube.com/watch?v=J1T1tbU6wAU)

### VCS Integration

HCP’s Version Control System (VCS) integration, particularly in Terraform Cloud, enables seamless connection between infrastructure code repositories and HCP services. This feature allows teams to directly link their Git repositories (from providers like GitHub, GitLab, or Bitbucket) to HCP workspaces. When configured, changes pushed to the linked repository automatically trigger Terraform runs in the corresponding workspace. This integration supports GitOps workflows, ensuring that infrastructure changes go through proper version control processes. It enables features like automatic plan generation on pull requests, providing early feedback on proposed changes. The integration also supports branch-based workflows, allowing different branches to be linked to different workspaces for staging and production environments.
Free Resources

- [officialConnecting VCS Providers to HCP Terraform](https://developer.hashicorp.com/terraform/cloud-docs/vcs)
- [officialUse VCS-driven workflow](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-vcs-change)
- [officialConfiguring Workspace VCS Connections](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/settings/vcs)

### Run Tasks

HCP Run Tasks, a feature of Terraform Cloud, allow for the integration of external services or custom logic into the Terraform workflow. These tasks can be configured to run before or after Terraform plans and applies, enabling additional validation, notification, or data processing steps. Run Tasks can be used for various purposes such as security scanning, cost estimation, custom policy checks, or triggering external workflows. They are executed via webhooks, allowing integration with a wide range of third-party services or internal tools. This feature enhances the flexibility and extensibility of the Terraform workflow, enabling organizations to implement custom processes and integrations tailored to their specific needs.
Free Resources

- [officialRun Tasks](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/settings/run-tasks)
- [officialTerraform Registry - Run Tasks](https://registry.terraform.io/browse/run-tasks)
- [officialRun Tasks API](https://developer.hashicorp.com/terraform/cloud-docs/api-docs/run-tasks/run-tasks)
