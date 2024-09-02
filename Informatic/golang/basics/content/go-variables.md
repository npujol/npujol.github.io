---
tags:
  - ready
  - online
  - reviewed
  - go
  - summary
  - informatic
  - variables
---

# variables

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/variables)__

## Variables in Go

Variable is the name given to a memory location to store a value of a specific [type](https://golangbot.com/types/). Go provides multiple ways to declare and use variables.

Visit the following resources to learn more:

- [@official@Go Variables](https://go.dev/tour/basics/8)
- [@article@Go by Example: Variables](https://gobyexample.com/variables)
- [@article@w3schools Go variables](https://www.w3schools.com/go/go_variables.php)

## Go Variable Naming Rules

A variable can have a short name (like `x` and `y`) or a more descriptive name (`age`, `price`, `carname`, etc.).

__Go variable naming rules:__

- A variable name must __start with a letter__ or an __underscore__ character (\_)
- A variable name cannot start with a digit
- A variable name can only contain __alpha-numeric characters__ and __underscores__ (a-z, A-Z, 0-9, and _ )
- Variable names are __case-sensitive__ (`age`, `Age` and `AGE` are three __different__ variables)
- There is __no limit__ on the __length__ of the variable name
- A variable name __cannot contain spaces__
- The variable name cannot be __any Go keywords__

## Difference Between var and :=

There are some small differences between the var and  `:=`:

| var                                                                        | `:=`                                                                          |
| -------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| Can be used __inside__ and __outside__ of functions                        | Can only be used __inside__ functions                                         |
| Variable __declaration__ and value __assignment__ _can be done separately_ | Variable __declaration__ and value __assignment__ _cannot be done separately_ |
