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

- __Keep functions small__: Each function should focus on a single task.
- __Use descriptive names__: Choose names that clearly convey the function’s purpose.
- __Limit parameters__: Use structs to group related parameters.
- __Document clearly__: Use comments to describe what each function does.
- __Handle errors__: Return errors and handle them appropriately.
- __Avoid side effects__: Functions should be predictable and not alter external state.
- __Prefer explicitness__: Make behavior clear and explicit.
- __Return early__: Simplify control flow by returning early.
