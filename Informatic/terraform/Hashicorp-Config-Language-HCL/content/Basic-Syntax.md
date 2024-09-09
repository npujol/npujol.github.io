---
tags:
- ready
- online
- terraform
- IaC
- infrastructure
---

# Basic Syntax

## Contents

__Roadmap info from [roadmap website](<https://roadmap.sh/terraform/basic> syntax@LaD0H7XhoEEaXbcwjxAbw)__

The Basic Syntax of HashiCorp Configuration Language (HCL) includes defining blocks, attributes, and expressions. Blocks are fundamental units like `resource`, `module`, and `provider`, identified by keywords and enclosed in curly braces. Attributes are key-value pairs within blocks, where keys are strings and values can be strings, numbers, or other data types. Expressions allow embedding variables, functions, and references to other resources, enabling dynamic configurations.

- [GitHubHCL Native Syntax Specification](https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md)

| __Element__    | __Description__                                                                    | __Example__                                                |
| -------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| __Block__      | A basic unit of configuration. Defines a resource or module.                       | `resource "aws_instance" "example" { ... }`                |
| __Type__       | Specifies the type of the resource or configuration.                               | `aws_instance`, `aws_s3_bucket`                            |
| __Name__       | An identifier for the specific instance of the resource.                           | `"example"` in `aws_instance "example"`                    |
| __Arguments__  | Key-value pairs within a block that define properties of the resource.             | `ami = "ami-0c55b159cbfafe1f0"`                            |
| __Attributes__ | Specific settings for the block.                                                   | `instance_type = "t2.micro"`                               |
| __Variables__  | Define input variables to make configurations dynamic.                             | `variable "region" { default = "us-east-1" }`              |
| __Outputs__    | Define output values that are returned after applying the configuration.           | `output "instance_id" { value = aws_instance.example.id }` |
| __Modules__    | Reusable configurations that can be shared across different setups.                | `module "network" { source = "./network" }`                |
| __Providers__  | Define providers (e.g., AWS, Azure) that allow interaction with specific services. | `provider "aws" { region = "us-east-1" }`                  |
| __Comments__   | Add comments to the configuration for better readability.                          | `# This is a comment` or `/* This is a comment */`         |
