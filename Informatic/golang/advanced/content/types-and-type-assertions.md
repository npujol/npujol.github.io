---
tags:
- ready
- online
- reviewed

- go
- summary
- informatic
- data-structure
- data-representation
- advanced
- types
- variables
---
# types-and-type-assertions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/types-and-type-assertions)__

## Types and type assertions

Type assertions in Golang provide access to the exact type of variable of an interface.

- [@official@Types Assertions](https://go.dev/tour/methods/15)

```go
package main

import "fmt"

func main() {
 var i interface{} = "hello"

 s := i.(string)
 fmt.Println(s)

 s, ok := i.(string)
 fmt.Println(s, ok)

 f, ok := i.(float64)
 fmt.Println(f, ok)

 f = i.(float64) // panic
 fmt.Println(f)
}
```
