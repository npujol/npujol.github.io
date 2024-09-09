---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Parallelism

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/parallelism@RtwZy60ruRpskmgr1qYYf)__

## Parallelism

Terraform parallelism refers to its ability to create, modify, or destroy multiple resources concurrently. By default, Terraform performs operations on up to 10 resource instances simultaneously. This parallel execution can significantly reduce the time required for applying large configurations. The level of parallelism can be adjusted using the `-parallelism` flag in Terraform commands or through configuration settings. Increasing parallelism can speed up operations, especially in large infrastructures, but may also increase load on the API endpoints of cloud providers. It’s important to balance parallelism with API rate limits and resource dependencies. Some resources or providers may not support parallel operations, and Terraform automatically serializes these. Effective use of parallelism requires understanding resource dependencies and provider capabilities to optimize performance without causing errors or exceeding service limits.

* [@article@Considerations when setting the TFE\_PARALLELISM environment variable](https://support.hashicorp.com/hc/en-us/articles/10348130482451-Considerations-when-setting-the-TFE-PARALLELISM-environment-variable)
* [@official@Walking the graph](https://developer.hashicorp.com/terraform/internals/graph#walking-the-graph)
