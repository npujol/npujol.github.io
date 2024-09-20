---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Security

## Contents

- [[tf-Terrascan]]
- [[tf-Checkov]]

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/security@erxow5xNRj01WepdFOhVf)__

Terraform security encompasses practices and tools to ensure the safe and compliant management of infrastructure-as-code. Key aspects include securing Terraform state files, which often contain sensitive information, by using encrypted remote backends. Access control is crucial, implementing least privilege principles for both human users and service accounts. Sensitive data management involves using vault systems or cloud-native secret managers rather than hardcoding credentials. Code review processes should include security checks, and automated scanning tools can be integrated to detect misconfigurations or policy violations. Implementing compliance-as-code with tools like Terraform Sentinel ensures adherence to organizational policies. Version control and proper git hygiene help maintain audit trails.

## Secret Management

Terraform secret management is a critical aspect of secure infrastructure-as-code practices, focusing on the protection of sensitive information like API keys, passwords, and access tokens. Instead of storing secrets directly in Terraform files, best practices advocate for using external secret management systems such as HashiCorp Vault, AWS Secrets Manager, or Azure Key Vault. These systems allow Terraform to retrieve secrets securely during execution, significantly reducing the risk of exposure. For local development, tools like git-crypt or SOPS provide encryption for sensitive files, while Terraform’s built-in encrypted state storage options safeguard secrets in state files. By marking variables as sensitive, accidental logging of secret values can be prevented. In CI/CD pipelines, it’s crucial to inject secrets securely at runtime and avoid committing them to version control systems. Regular rotation of secrets and access audits further enhance security.
Free Resources

- [officialInject secrets with Vault](https://developer.hashicorp.com/terraform/tutorials/secrets)
- [articleTerraform Secrets - How to manage them](https://spacelift.io/blog/terraform-secrets)
- [articleA comprehensive guide to managing secrets in your Terraform code](https://blog.gruntwork.io/a-comprehensive-guide-to-managing-secrets-in-your-terraform-code-1d586955ace1)

## Compliance / Sentinel

Hashicorp Sentinel is a policy-as-code framework integrated with HashiCorp’s enterprise products, including Terraform Cloud and Terraform Enterprise. It allows organizations to define and enforce standardized, fine-grained policies across their infrastructure deployments. Sentinel policies can be written to check for security compliance, cost management, or operational best practices before Terraform applies any changes. These policies use a domain-specific language to define rules that evaluate Terraform plans and state, enabling teams to catch potential issues early in the development process. Sentinel can enforce mandatory policies that prevent non-compliant infrastructure changes from being applied, or advisory policies that warn but don’t block deployments.
Free Resources

- [officialTerraform and Sentinel](https://developer.hashicorp.com/sentinel/docs/terraform)
- [GitHubhashicorp/terraform-sentinel-policies](https://github.com/hashicorp/terraform-sentinel-policies)
- [articleEnforce policy-as-code](https://www.terraform.io/use-cases/enforce-policy-as-code)
