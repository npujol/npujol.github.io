---
tags:
- ready
- online
- reviewed
- go
---

# Resume

## Why should I use Go

### Advantages of Go

- Code runs fast
- Has garbage collections
- Has simple objects
- Concurrency is efficient

## Objects in Go

- Doesn't use the term `class`
- Uses `structs` with associated methods
- Simplified implementation of classes
- Doesn't have inheritance, constructs or generic class
  
## Concurrency

- is the management of multiples tasks at the same time
- Key requirement for large systems
- Concurrent programming enables parallelism

### Concurrency in Go

- Includes concurrency primitives
- __Goroutines__ represent concurrent tasks
- __Channels__ are used to communicate between tasks
- __Select__ enables task synchronization
- Concurrency primitives are efficient and easy to use

## Characteristics

### Workspaces

- Hierarchy of directories (recommended)
- Common organization is good for sharing
- Three subdirectories
- `src` contains source code files
- `pkg` contains packages (libraries)
- `bin` contains executables
- Programmer typically has one workspace for many projects
- Workspace directory is defined by `GOPATH` environment variable

## Packages in Go

- Group of related source files
- Each package can be imported by other packages
- Enables software reuse

### Package `main`

- There must be one package called `main`
- Building the main package generated an executable program
- Main package needs a `main()` function
- `main()` is where code execution starts
  
## Tools

- `import <package>` from (`GOROOT` or `GOPATH`)
- `go build` -> make the executable
- `go doc` -> show the documentation
- `go fmt` -> format the code
- `go get` -> download and install a pkg
- `go list` -> list the dependencies
- `go run` -> run the program
- `go test` -> run the tests

### Pointers

- it's an address to data in memory
- `&var` returns the address of a variable/function
- `*var` returns data at an address(dereferencing)

```bashgo
var x int = 1;
var y int;
var ip *int; // ip is pointer to int
ip = &x;     // ip now points to x
y = *ip      // y is now 1
```

`new()` creates a variable and returns a pointer to the variable. Also it's initialized to zero
__variable scope__ is the place in the code where a variable can be accessed
__block__ is a sequence of declarations and statements within matching bracket `{}`, including function definitions

### Lexical scooping

- `bi` >= `bj` if `bj` is defined inside `bi` -> `defined inside` is transitive
- a variable is accessible in a block `bi` if: the variable is declared in block `bi` and `bi` >= `bj`

### Deallocating Space

- When a variable is no longer needed, it's should be deallocated, than memory space is made available
- Otherwise, we will eventually run out of memory

## Memory, how it's work

- Stack
- is dedicated to function calls

- Heap
- global, persisted memory
- local variables are stored here
- deallocated after function completes

### Manual deallocation

- Data on the Heap must be deallocated when it's done being used
- In most compiled languages(C), this is dome manually
- It's hard to determine when a variable is no longer in use, when a function returns a pointer
  
### Garbage Collection

- In interpreted languages, this is done by the interpreter, that is easy for programers, but need a slow interpreter

#### Garbage Collection in Go

- is a compiled language which enables garbage collection
- implementation is fast
- compiler determines stack vs heap
- the process runs in the background

## Binary operators

- Arithmetic: `+, -, *, /, %, <<, >>`
- Comparison: `==, !=. >, <, >=, <=`
- Boolean: `&&, ||`

Most binary operators needs operators of the same type, including assignments

## Floating  point

- Expressed using decimals(`123.34`) or scientific notation(`1.2345e2`)
- Complex numbers are represented as two floats: real and imaginary(`complex(2,3)`)

## ASCII and Unicode

- `Unicode` is a 32-bit character code
- `UTF-8` is a variable length, `8-bit UTF` codes are the same as `ASCII`
- `Code Points` are `Unicode` characters
- `Rune` is a `code point` in Go

## Strings

- sequence of arbitrary `bytes`
- read-only
- often is to be printed
- String literal use double quotes
- Each `byte` is a `rune`  

### Important packages

- Unicode
- Strconv

## Constants

- Expressions whose value is know for the compiler
- Package `iota` has a set of common constants

## Control flow

- control structure: `if`
- for loops
- switch/case
- break and continue
- scan

## Arrays

- fixed-length serie of elements of a chosen type
- elements are accessed using subscript notation, `[]`
- index starts at 0

### Array literal

- an array pre-defined with values
- its length must be the length of the array

## Slices

- a window on an underlying array
- variable size. up to the whole array
- pointer -> indicates the start of the slice
- length -> it's the number of elements in the slice (`len()`)
- capacity -> is the maximum number of elements (`cap()`)
- writing to a slice changes underlying array
- overlapping slices refer to the same array elements
  
### Slice literals

- can be used to initialize a slice
- creates the underlying array and a slice to reference it
- slice points to the start of the array, length is the capacity

### Make

- Create a slice using `make()`
- 2-argument version: specify type and length/capacity (`make([] int, 10)`) -> `length=capacity`
- 3-argument version: specify type, length and capacity (`make([] int, 10, 15)`) -> `length= 10, capacity=15`

### Append

- increase the size of a slice and of array if necessary
- add elements to the end of a slice
- inserts into underlying array

## Hash table

- contains key/values pairs
- each value is associated with a unique key
- hash function is used to compile the slot for a key
- Advantage:
- faster lookup than lists
- arbitrary keys
- Disadvantage
- May have collisions

### Maps

- implementation of a hash table in Go
- it's used `make` to create a map
- may define a map literal

#### Accessing maps

- Referencing a value with `[key]`
- return zero if jey is not present

## Json

- `struct` are the equivalent in Go
- all unicode
- human-readable
- fairly compact representation
- type can be combine recursively
- Json Marshalling: convert a json representation from an object
- Unmarshall: convert a json object into a Go object
- The obj must `fit` into a JSON[]byte

## Files

- linear access, not random access, mechanical delay
- basic operation: Open, Read, Write, Close, Seek
- package `ioutil` to handle file operations
- package `os` to handle system operations

## Interacting through a map

- use a loop with the range keyword
- two-value assignment with range

```bashgo
for key, value := range idMap{
    fmt.Println(key, val)
}
```

## Struct

- aggregate data type
- groups together other objects of arbitrary type
- each property is a field

## Protocol packages

- `net/http` -> utils for web communication protocol
- `net` -> utils for TCP/IP and socket
