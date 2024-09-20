---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# for_each

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/terraform/for_each@gcdg_GhAacIWzv19ITTE_)__

## for\_each

The for\_each meta-argument in Terraform enables you to create multiple instances of a resource based on a set or map. Unlike count, which uses a simple integer, for\_each allows for more granular and dynamic resource creation, as each instance is associated with a specific key-value pair from the given set or map. This meta-argument is particularly useful for creating resources with unique configurations derived from the keys and values of the set or map. By leveraging for\_each, you can manage collections of resources more efficiently, ensuring each instance can be individually referenced and customized based on its specific key.

Note: You cannot declare for\_each and count in the same resource.

* [@official@Terraform Docs - for\_each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)
* [@article@Terraform by Example - for\_each](https://www.terraformbyexample.com/for_each)
* [@video@Terraform for loops](https://www.youtube.com/watch?v=4qO7WK6D3cA)
