---
tags:
  - ready
  - online
  - reviewed
  - go
  - summary
  - informatic
  - types
  - functions
---

# functions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/functions)__

## Functions

Discover how functions work in Go, the list of resources below will cover :

- How to define and call functions in Go?
- Named returns in Go?
- Handle multiple return types.
- Different types of functions in Go.

- [@article@Go by Example: Functions](https://gobyexample.com/functions)
- [@article@Functions in go](https://www.golangprograms.com/go-language/functions.html)
- [@official@Effective Go: Functions](https://go.dev/doc/effective_go#functions)

### Naming Rules for Go Functions

- A function name must start with a letter
- A function name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )
- Function names are case-sensitive
- A function name cannot contain spaces
- If the function name consists of multiple words, techniques introduced for multi-word variable naming can be used

### Functions Best Practices

- **Keep functions small**: Each function should focus on a single task.
- **Use descriptive names**: Choose names that clearly convey the function’s purpose.
- **Limit parameters**: Use structs to group related parameters.
- **Document clearly**: Use comments to describe what each function does.
- **Handle errors**: Return errors and handle them appropriately.
- **Avoid side effects**: Functions should be predictable and not alter external state.
- **Prefer explicitness**: Make behavior clear and explicit.
- **Return early**: Simplify control flow by returning early.