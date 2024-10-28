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
- types
- syntax
- functions
- loops
- errors
---

# basics

## Contents

- [[go-basic-syntax]]
- [[go-variables]]
- [[go-packages]]
- [[go-functions]]
- [[go-conditionals]]
- [[go-type-casting]]
- [[go-type-inference]]
- [[go-for-loop]]
- [[go-structs]]
- [[go-arrays]]
- [[go-slices]]
- [[go-make]]
- [[go-range]]
- [[go-maps]]
- [[go-errors-panic-recover]]
- [[go-data-types]]

__Roadmap info from [roadmap website](https://roadmap.sh/golang/basics)__

## Learn the Basics

Learn the common concepts of Go like variables, loops, conditional statements, functions, data types, and so on. A good starting point for go basics is its Go’s official docs.

Visit the following resources to learn more:

- [officialOfficial Go Tutorial](https://go.dev/doc/tutorial/)
- [articleW3 Schools Go Tutorial](https://www.w3schools.com/go/index.php)
- [feedExplore top posts about Golang](https://app.daily.dev/tags/golang?ref=roadmapsh)

## What is Go

- Go is a cross-platform, open source programming language
- Go can be used to create high-performance applications
- Go is a fast, statically typed, compiled language known for its simplicity and efficiency
- Go was developed at Google by Robert Griesemer, Rob Pike, and Ken Thompson in 2007
- Go's syntax is similar to C++

## What is Go Used For

- Web development (server-side)
- Developing network-based programs
- Developing cross-platform enterprise applications
- Cloud-native development

## Why Use Go

- Go is fun and easy to learn
- Go has fast run time and compilation time
- Go supports concurrency
- Go has memory management
- Go works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)

## Go Compared to Python and C++

| Go                                                  | Python                            | C++                                        |
| --------------------------------------------------- | --------------------------------- | ------------------------------------------ |
| Statically typed                                    | Dynamically typed                 | Statically typed                           |
| Fast run time                                       | Slow run time                     | Fast run time                              |
| Compiled                                            | Interpreted                       | Compiled                                   |
| Fast compile time                                   | Interpreted                       | Slow compile time                          |
| Supports concurrency through goroutines and channel | No built-in concurrency mechanism | Supports concurrency through threads       |
| Has automatic garbage collection                    | Has automatic garbage collection  | Does not have automatic garbage collection |
| Does not support classes and objects                | Has classes and objects           | Has classes and objects                    |
| Does not support inheritance                        | Supports inheritance              | Supports inheritance                       |

## Formatting Verbs for Printf()

Go offers several formatting verbs that can be used with the `Printf()` function.
General Formatting Verbs. The following verbs can be used with the integer data type:

| Verb   | Description                                |
| ------ | ------------------------------------------ |
| `%b`   | Base 2, binary                             |
| `%d`   | Base 10, decimals                          |
| `%+d`  | Base 10 and always show sign               |
| `%o`   | Base 8                                     |
| `%O`   | Base 8, with leading 0o                    |
| `%x`   | Base 16, lowercase                         |
| `%X`   | Base 16, uppercase                         |
| `%#x`  | Base 16, with leading 0x                   |
| `%4d`  | Pad with spaces (width 4, right justified) |
| `%-4d` | Pad with spaces (width 4, left justified)  |
| `%04d` | Pad with zeroes (width 4)                  |

## String Formatting Verbs

The following verbs can be used with the string data type:

| Verb   | Description                                                 |
| ------ | ----------------------------------------------------------- |
| `%s`   | Prints the value as plain string                            |
| `%q`   | Prints the value as a double-quoted string                  |
| `%8s`  | Prints the value as plain string (width 8, right justified) |
| `%-8s` | Prints the value as plain string (width 8, left justified)  |
| `%x`   | Prints the value as hex dump of byte values                 |
| `% x`  | Prints the value as hex dump with spaces                    |

## Boolean Formatting Verbs

The following verb can be used with the boolean data type:

| Verb |Description|
|---|---|
| `%t` |Value of the boolean operator in true or false format (same as using %v)|

## Float Formatting Verbs

The following verbs can be used with the float data type:

| Verb    | Description                               |
| ------- | ----------------------------------------- |
| `%e`    | Scientific notation with 'e' as exponent  |
| `%f`    | Decimal point, no exponent                |
| `%.2f`  | Default width, precision 2                |
| `%6.2f` | Width 6, precision 2                      |
| `%g`    | Exponent as needed, only necessary digits |

### Memory Efficiency

When using slices, Go loads all the underlying elements into the memory.
If the array is large and you need only a few elements, it is better to copy those elements using the __copy() function__. The __copy() function__ creates a new underlying array with only the required elements for the slice. This will reduce the memory used for the program.

```go
package main

import (
 "fmt"
)

func main() {
 // Suppose we have a large array
 largeArray := [1000000]int{}
 for i := 0; i < len(largeArray); i++ {
  largeArray[i] = i
 }

 // We only need a small slice of this large array
 smallSlice := largeArray[100:200]

 // This smallSlice still references the entire largeArray in memory
 fmt.Println("Length of smallSlice:", len(smallSlice))
 fmt.Println("Capacity of smallSlice:", cap(smallSlice)) // Large capacity indicates underlying array is still large

 // To optimize memory, create a new slice with a new underlying array using copy
 optimizedSlice := make([]int, len(smallSlice))
 copy(optimizedSlice, smallSlice)

 // Now, optimizedSlice is independent of largeArray and uses less memory
 fmt.Println("Length of optimizedSlice:", len(optimizedSlice))
 fmt.Println("Capacity of optimizedSlice:", cap(optimizedSlice)) // Capacity now matches the length, indicating efficient memory usage
}
```

### Defer

Go's defer statement schedules a function call (the deferred function) to be run immediately before the function executing the defer returns. It's an unusual but effective way to deal with situations such as resources that must be released regardless of which path a function takes to return. The canonical examples are unlocking a mutex or closing a file.

## Golang Types and Their Explanations

| Type          | Description                                                                                   |
|---------------|-----------------------------------------------------------------------------------------------|
| __bool__      | A boolean type representing true or false.                                                    |
| __string__    | A sequence of characters. Strings in Go are immutable.                                        |
| __int__       | A signed integer type, with platform-specific size (either 32 or 64 bits).                    |
| __int8__      | A signed 8-bit integer (-128 to 127).                                                         |
| __int16__     | A signed 16-bit integer (-32,768 to 32,767).                                                  |
| __int32__     | A signed 32-bit integer (-2,147,483,648 to 2,147,483,647).                                    |
| __int64__     | A signed 64-bit integer (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807).            |
| __uint__      | An unsigned integer type, with platform-specific size (either 32 or 64 bits).                 |
| __uint8__     | An unsigned 8-bit integer (0 to 255).                                                         |
| __uint16__    | An unsigned 16-bit integer (0 to 65,535).                                                     |
| __uint32__    | An unsigned 32-bit integer (0 to 4,294,967,295).                                              |
| __uint64__    | An unsigned 64-bit integer (0 to 18,446,744,073,709,551,615).                                 |
| __uintptr__   | An unsigned integer large enough to store the uninterpreted bits of a pointer value.          |
| __byte__      | An alias for uint8, typically used to emphasize that the value is a raw byte.                 |
| __rune__      | An alias for int32, represents a Unicode code point.                                          |
| __float32__   | A 32-bit floating-point number.                                                               |
| __float64__   | A 64-bit floating-point number.                                                               |
| __complex64__ | A complex number with float32 real and imaginary parts.                                       |
| __complex128__| A complex number with float64 real and imaginary parts.                                       |
| __array__     | A fixed-size sequence of elements of a single type.                                           |
| __slice__     | A dynamically-sized, flexible view into the elements of an array.                             |
| __map__       | An unordered collection of key-value pairs.                                                   |
| __struct__    | A collection of fields, which can be of different types. Used to create complex data types.   |
| __interface__ | An abstract type that specifies a set of method signatures.                                   |
| __chan__      | A channel type used for communication between goroutines.                                     |
| __func__      | A type for function literals. Functions are first-class citizens in Go.                       |

## Interfaces

- An interface type is defined as a set of method signatures.
- A value of interface type can hold any value that implements those methods.
