---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# CaC vs IaC

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/cac> vs iac@UsINvx84pBF1hp8XoLF4c)__

CaC (Configuration as Code) and IaC (Infrastructure as Code) are both ways to manage infrastructure resources, but they focus on different things. CaC deals with setting up and managing the software and settings within your servers, like user settings and app configs. Examples of CaC tools include Ansible and Puppet. IaC, on the other hand, is about managing the underlying infrastructure, like virtual machines, networks, and storage. Examples of IaC tools include Terraform and AWS CloudFormation. So, while IaC sets up the environment, CaC ensures the software within that environment runs correctly.

- [articleIaC vs CaC](https://medium.com/@cloudhacks_/infrastructure-as-code-iac-vs-configuration-as-code-cac-unraveling-the-differences-24fbce05ae25)
- [videoAnsible vs. Terraform: What’s the difference?](https://www.youtube.com/watch?v=rx4Uh3jv1cA)

| Feature                 | Configuration as Code (CaC)                                         | Infrastructure as Code (IaC)                                         |
|-------------------------|---------------------------------------------------------------------|---------------------------------------------------------------------|
| __Definition__          | Management of software configuration through code.                  | Management of infrastructure (servers, networks, etc.) through code.|
| __Focus__               | Configuration settings of applications or services.                  | Provisioning and management of infrastructure resources.             |
| __Primary Use__         | Application settings, environment configurations, deployment setups. | Creating, updating, and managing infrastructure components.         |
| __Tools__               | Ansible, Chef, Puppet, SaltStack.                                    | Terraform, AWS CloudFormation, Azure Resource Manager (ARM) templates.|
| __Scope__               | Application-level configurations.                                    | Infrastructure-level provisioning and management.                     |
| __State Management__    | Typically does not manage state persistently.                        | Often manages and maintains state of resources.                      |
| __Examples__            | Configuring web server settings, application properties.             | Provisioning virtual machines, databases, and networks.               |
| __Configuration__       | Defines how an application or service should be set up.              | Defines the resources and their configurations needed for deployment.|
| __Integration__         | Often integrated with deployment pipelines for application updates. | Integrated with CI/CD pipelines for infrastructure deployment.       |
| __Complexity__          | Generally less complex as it deals with configuration rather than infrastructure. | Can be more complex due to the involvement of various infrastructure components.|
| __Use Case__            | Ideal for managing application settings and configurations.          | Ideal for setting up and managing the underlying infrastructure.      |
