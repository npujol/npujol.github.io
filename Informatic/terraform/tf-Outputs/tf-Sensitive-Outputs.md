---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Sensitive Outputs

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/sensitive> outputs@8giL6H5944M2L0rwxjPso)__

Terraform sensitive outputs are a feature used to protect sensitive information in Terraform configurations. When an output is marked as sensitive, Terraform obscures its value in the console output and state files, displaying it as "" instead of the actual value. This is crucial for protecting sensitive data like passwords or API keys.

To mark an output as sensitive, use the sensitive argument in the output block:

```terraform
output "database_password" {
  value     = aws_db_instance.example.password
  sensitive = true
}
```

Sensitive outputs are still accessible programmatically, but their values are hidden in logs and the console to prevent accidental exposure. This feature helps maintain security when sharing Terraform configurations or outputs with team members or in CI/CD pipelines.

- [officialSuppressing values in CLI output](https://developer.hashicorp.com/terraform/language/values/outputs#sensitive-suppressing-values-in-cli-output)
- [articleHow to output sensitive data in Terraform](https://support.hashicorp.com/hc/en-us/articles/5175257151891-How-to-output-sensitive-data-with-Terraform)
