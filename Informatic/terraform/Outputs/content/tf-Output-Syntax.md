---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Output Syntax

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/output> syntax@31fa8kBzCEn-uCrTSoPM4)__

Terraform output syntax is used to define values that should be made accessible after applying a Terraform configuration. The basic syntax is:

```terraform
output "name" {
  value = expression
  description = "Optional description"
  sensitive = bool
}
```

`name` is a unique identifier for the output. `value` is the expression whose result will be output. `description` is optional and provides context. `sensitive` is a boolean flag to mark sensitive data.
Free Resources

---

- [courseHashicorp Output Tutorial](https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs)
- [officialDeclaring an output value](https://developer.hashicorp.com/terraform/language/values/outputs#declaring-an-output-value)
- [articleTerraform Output Values : Complete Guide & Examples](https://spacelift.io/blog/terraform-output)
- [articleTerraform: Output a field from a module](https://stackoverflow.com/questions/47034515/terraform-output-a-field-from-a-module)
