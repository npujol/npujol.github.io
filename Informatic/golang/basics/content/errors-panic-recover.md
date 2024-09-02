---
tags:
- ready
- online
- reviewed
- go
- summary
- informatic
- errors
- exceptions
- error-handling
---

# errors-panic-recover

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/errors-panic-recover)__

## Errors/Panic/Recover

In lieu of adding exception handlers, the Go creators exploited Go’s ability to return multiple values. The most commonly used Go technique for issuing errors is to return the error as the last value in a return.

A panic typically means something went unexpectedly wrong. Mostly used to fail fast on errors that shouldn’t occur during normal operation, or that we aren’t prepared to handle gracefully.

Panic recovery in Go depends on a feature of the language called deferred functions. Go has the ability to guarantee the execution of a function at the moment its parent function returns. This happens regardless of whether the reason for the parent function’s return is a return statement, the end of the function block, or a panic.

- **Errors**: The idiomatic way to handle errors in Go is to return an `error` value and check it after the function call. This allows the caller to handle the error appropriately.
- **Panic**: Used to stop the normal execution of a program when an unexpected error occurs. It should be used sparingly, typically for unrecoverable conditions.
- **Recover**: Allows regaining control after a panic, but only within a deferred function. This can be useful to gracefully handle unexpected conditions without crashing the entire program.

- [@official@Error handling and Go](https://go.dev/blog/error-handling-and-go)
- [@official@Go Defer, Panic and Recover](https://go.dev/blog/defer-panic-and-recover)
- [@article@Effective error handling in Go](https://earthly.dev/blog/golang-errors/)


Error handling in Go is a critical aspect of writing robust and reliable programs. Go provides a straightforward approach to error handling using return values, along with mechanisms like `panic` and `recover` for handling unexpected conditions.

#### 1. **Errors**

In Go, errors are values, and they are commonly used to indicate failure. The idiomatic way to handle errors in Go is to return an `error` type from a function and check it where the function is called.

#### 2. **Panic**

`panic` is a built-in function that stops the normal execution of the current goroutine. When `panic` is called, it will log a message, run any deferred functions, and then terminate the program.

Panic is typically used to indicate a programmer error, such as accessing an out-of-bounds array index or a critical failure that should not occur under normal circumstances.

#### 3. **Recover**

`recover` is a built-in function that can be used to regain control of a panicking goroutine. It is only effective when called inside a deferred function. If `recover` is called, it stops the panic and returns the value passed to `panic`. If `recover` is not called in a deferred function, the program continues to panic.

```go
package main

import (
    "fmt"
)

func causePanic() {
    defer func() {
        if r := recover(); r != nil {
            fmt.Println("Recovered from panic:", r)
        }
    }()
    panic("something went wrong")
    fmt.Println("This line will not be executed")
}

func main() {
    fmt.Println("Before panic")
    causePanic()
    fmt.Println("After panic")
}

```