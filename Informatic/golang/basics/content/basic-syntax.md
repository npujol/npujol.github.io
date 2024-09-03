---
tags:
  - ready
  - online
  - reviewed
  - go
  - syntax
---

# basic-syntax

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/basic-syntax)__

## Basic Syntax

Learn about the basic syntax of Go, such as how the go programs are executed, package imports, main function, and so on. Visit the resources listed below

Visit the following resources to learn more:

- [@official@Go Tutorial: Getting started](https://go.dev/doc/tutorial/getting-started)
- [@article@Go by Example: Hello World](https://gobyexample.com/hello-world)
- [@article@W3schools : Go Syntax](https://www.w3schools.com/go/go_syntax.php)

## Go Syntax

A Go file consists of the following parts:

- __Package declaration__: The first line of every Go source file must declare the package it belongs to. In this example, the package is `main`, which is the entry point of a Go program.
- __Import packages__: The `import` statement is used to include other packages that your program depends on. In this example, we import the `fmt` package for formatted I/O and the `math` package for mathematical functions.
- __Functions__: Functions contain the executable code. The `main` function is special; it is the entry point of a Go program. Other functions can be defined to structure the program logic, such as the `add` function in this example.
- __Statements and expressions__: Inside functions, you write the logic of your program using statements (like `fmt.Println`) and expressions (like `a + b`). These are the actual instructions that the Go compiler will execute.

```go
// Package declaration
package main

// Import packages
import (
    "fmt"
    "math"
)

// Functions
func main() {
    // Statements and expressions
    fmt.Println("Hello, World!")

    result := add(10, 20)
    fmt.Println("10 + 20 =", result)

    squareRoot := math.Sqrt(16)
    fmt.Println("Square root of 16 is", squareRoot)
}

func add(a int, b int) int {
    // Statements and expressions
    return a + b
}
```
