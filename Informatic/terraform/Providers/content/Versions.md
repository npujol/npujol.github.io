---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Versions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/versions@bnQ2YLHd7E-vRxX3PnUEX)__

## Versions

Specifying provider versions in Terraform ensures consistent and predictable behavior across different environments. Instead of using the `version` meta-argument within the provider block, which was deprecated and removed in Terraform 0.13, provider version constraints should now be defined in the `required_providers` block. This approach prevents unexpected changes or compatibility issues due to provider updates, enhancing stability and reliability in infrastructure management. It allows you to control when and how provider updates are applied, ensuring that your infrastructure code runs with the expected provider functionality.

* [@official@Requiring Providers](https://developer.hashicorp.com/terraform/language/providers/requirements#requiring-providers)
