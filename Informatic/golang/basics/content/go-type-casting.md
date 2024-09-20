---
tags:
- ready
- online
- reviewed
- go
- summary
- informatic
- types
---

# type-casting

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/type-casting)__

## Type Casting

Go doesn’t support automatic type conversion, but it allows type casting, which is the process of explicitly changing the variable type.

- [@official@Tour of Go: Type Casting Basics](https://go.dev/tour/basics/13)
- [@article@Go Docs: Type Casting](https://golangdocs.com/type-casting-in-golang)

- __Basic Type Conversion__: Convert between basic types like `int` and `float64` using explicit type conversion. Example: `var floatVal float64 = float64(intVal)`
- __String Conversion__: Use functions like `strconv.Atoi` and `strconv.Itoa` for converting between strings and integers.
- __Type Assertion__: Retrieve underlying types from interfaces using type assertions. Example: `strVal, ok := i.(string)
- __Custom Type Conversion__: Define custom types and methods to handle conversions within your application.

```go
package main

import (
    "fmt"
)

type Celsius float64
type Fahrenheit float64

func (c Celsius) ToFahrenheit() Fahrenheit {
    return Fahrenheit(c*9/5 + 32)
}

func main() {
    tempC := Celsius(25)
    tempF := tempC.ToFahrenheit()
    fmt.Printf("%.2f°C is %.2f°F\n", tempC, tempF)
}
```
