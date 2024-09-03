---
tags:
- ready
- online
- reviewed
- summary
- informatic
- pointers
- advanced
- go
- variable
---

# pointers

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/pointers)__

## Go Pointers

Go pointers are a powerful feature that allows you to work with memory addresses directly. They are used to store the memory address of a variable. This can be useful when you need to pass a large amount of data to a function or when you need to modify the value of a variable inside a function.

Visit the following resources to learn more:

- [@official@Pointers](https://go.dev/tour/moretypes/1)
- [@article@Go by Example: Pointers](https://gobyexample.com/pointers)
- [@video@YouTube: Pointers](https://www.youtube.com/watch?v=a4HcEsJ1hIE)

### Best Practices for Using Pointers in Go

Pointers are a powerful feature in Go, allowing functions to modify the values of variables and struct fields in place, without needing to return new values. However, improper use of pointers can lead to issues such as nil pointer dereferences, memory leaks, and increased complexity.

#### Summary

- __Use pointers when you need to modify data in place__, but avoid them when not necessary.
- __Always check for nil pointers__ before dereferencing to avoid panics.
- __Use pointers with large structs__ to avoid copying and improve performance.
- __Prefer value receivers for methods__ that don’t modify the receiver.
- __Avoid returning pointers to local variables__ to prevent dangling pointers.
- __Use `new` for heap allocation__ when needed.
- __Favor slices and maps over pointers to arrays__ for ease of use and safety.
- __Use pointers for optional parameters__ but handle nil values carefully.
- __Evaluate alternatives__ before using pointers to keep your code simple and idiomatic.

#### 1. __Understand When to Use Pointers__

- __Modify Data In-Place__: Use pointers when you need to modify the value of a variable or a struct field in place, especially in functions or methods. Pointers allow you to avoid copying large data structures and can lead to more efficient memory usage.

__Example__:

```go
func increment(value *int) {
    *value++
}

num := 5
increment(&num)
fmt.Println(num) // Output: 6
```

- __Avoid Unnecessary Pointer Use__: Don’t use pointers just because you can. If you don’t need to modify a value or if the data structure is small (like basic types), consider passing by value instead. Passing by value can be simpler and avoids potential issues with nil pointers.

#### 2. __Check for Nil Pointers__

- __Nil Checks__: Always check if a pointer is `nil` before dereferencing it. Dereferencing a nil pointer will cause a runtime panic.

__Example__:

```go
func printName(name *string) {
    if name == nil {
        fmt.Println("No name provided")
        return
    }
    fmt.Println(*name)
}
```

- __Default to Non-Pointer Types When Possible__: If a pointer might be nil and you want to avoid nil checks, consider using a non-pointer type with a default value instead.

#### 3. __Use Pointers with Structs for Efficiency__

- __Avoid Struct Copies__: When passing large structs to functions or methods, use pointers to avoid copying the entire struct. This can improve performance, especially with large or complex data structures.

__Example__:

```go
type User struct {
    ID   int
    Name string
}

func updateUser(user *User) {
    user.Name = "New Name"
}
```

#### 4. __Use Pointers for Mutability in Receivers__

- __Mutable Methods__: If a method needs to modify the state of the receiver, the receiver should be a pointer to the struct. If the method doesn’t need to modify the state, you can use a value receiver.

__Example__:

```go
type Counter struct {
    value int
}

// Pointer receiver to modify state
func (c *Counter) Increment() {
    c.value++
}

// Value receiver for read-only method
func (c Counter) Value() int {
    return c.value
}
```

#### 5. __Avoid Returning Pointers to Local Variables__

- __Avoid Dangling Pointers__: Returning a pointer to a local variable in a function can be risky because the variable's memory may be reclaimed after the function returns, leading to undefined behavior.

__Example__ (bad practice):

```go
func getPointer() *int {
    x := 10
    return &x // Dangerous: x is a local variable
}
```

__Correct Approach__: Instead, allocate memory on the heap or pass the variable by value and let the caller take a pointer if needed.

#### 6. __Use `new` for Heap Allocation__

- __Heap Allocation__: Use the `new` function to allocate memory on the heap and return a pointer to the zero value of the type. This is useful for creating pointer types without needing to manually create a variable.

__Example__:

```go
p := new(int)  // p is a pointer to an int with value 0
*p = 42
fmt.Println(*p)  // Output: 42
```

#### 7. __Be Cautious with Pointer Arithmetic__

- __No Pointer Arithmetic__: Unlike languages like C, Go does not support pointer arithmetic. This reduces the chance of bugs related to pointer manipulation and makes Go safer in terms of memory access.

__Example__ (not allowed in Go):

```go
// Go does not support pointer arithmetic
// var p *int
// p++  // This will cause a compilation error
```

#### 8. __Use Slices and Maps Instead of Pointers to Arrays__

- __Avoid Manual Pointer Management__: In Go, slices and maps are reference types, meaning they already behave like pointers to underlying data. Prefer using slices and maps instead of manually managing pointers to arrays.

__Example__:

```go
arr := []int{1, 2, 3}
modify(arr)
fmt.Println(arr) // Output: [10, 2, 3]

func modify(arr []int) {
    arr[0] = 10 // Modifies the original array
}
```

#### 9. __Consider Using Value Semantics for Small Types__

- __Value Semantics__: For small data types like `int`, `float`, `bool`, and small structs, consider using value semantics instead of pointers. This reduces the complexity of your code and avoids unnecessary indirection.

__Example__:

```go
type Point struct {
    X, Y int
}

func move(p Point) Point {
    p.X += 10
    p.Y += 10
    return p
}
```

#### 10. __Use `nil` for Optional and Sentinel Values__

- __Optional Parameters__: Pointers can be used to indicate optional parameters or sentinel values. However, ensure that the function handles nil values appropriately.

__Example__:

```go
func greet(name *string) {
    if name == nil {
        fmt.Println("Hello, Guest!")
        return
    }
    fmt.Println("Hello,", *name)
}
```

#### 11. __Avoid Overuse of Pointers in Go__

- __Simpler Alternatives__: Sometimes, using interfaces, slices, or maps can be simpler and more idiomatic than using pointers. Evaluate whether a pointer is necessary before using one.

__Example__:

```go
type Processor interface {
    Process()
}

func doWork(p Processor) {
    p.Process()
}
```
