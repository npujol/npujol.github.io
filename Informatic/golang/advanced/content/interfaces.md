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
- interface
- methods
---

# interfaces

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/interfaces)__

## Interfaces

An interface in Go, is a type that defines a set of methods. If we have a type (e.g. struct) that implements that set of methods, then we have a type that implements this interface.

Visit the following resources to learn more:

- [@official@Go Interfaces](https://go.dev/tour/methods/9)
- [@official@Effective Go: Interfaces](https://go.dev/doc/effective_go#interfaces)
- [@article@Go by Example: Interfaces](https://gobyexample.com/interfaces)
- [@video@Golang Tutorial #22 - Interfaces (by Tech With Tim on YouTube)](https://www.youtube.com/watch?v=lh_Uv2imp14)
- [@video@Learn Go Interfaces](https://www.youtube.com/watch?v=KB3ysH8cupY)
- [@video@Understanding Go Interfaces](https://www.youtube.com/watch?v=qJKQZKGZgf0)

### Tips

- __Design interfaces based on behavior, not data__.
- __Keep interfaces small and focused__.
- __Rely on implicit interface satisfaction__ to reduce boilerplate.
- __Use interfaces as function parameters__ to increase flexibility.
- __Return concrete types__ when possible to reduce ambiguity.
- __Ensure the zero value__ of types implementing interfaces is useful.
- __Avoid single-implementer interfaces__ unless necessary.
- __Compose interfaces__ to build larger abstractions from smaller ones.
- __Document interfaces__ to clarify their contract.
- __Use interfaces in tests__ for better mockability and test coverage.
- __Keep interfaces unexported__ unless they need to be public.
- __Avoid creating large, monolithic interfaces__ that are hard to implement.

### Best Practices for Using Interfaces in Go

Interfaces in Go provide a way to define behavior through method signatures without specifying how those behaviors are implemented. Proper use of interfaces can lead to more modular, testable, and maintainable code. Here are some best practices for using interfaces in Go:

#### 1. __Define Interfaces Based on Behavior, Not Data__

- __Focus on Method Sets__: Design interfaces to represent a specific behavior or set of related behaviors, rather than tying them to particular data structures. Interfaces should capture "what something does" rather than "what something is."

__Example__:

```go
type Reader interface {
    Read(p []byte) (n int, err error)
}
```

The `Reader` interface is defined based on the behavior of reading, not tied to any specific data structure.

#### 2. __Keep Interfaces Small__

- __Single Responsibility__: Favor small, focused interfaces with one or two methods. This adheres to the Single Responsibility Principle and makes your interfaces easier to implement, mock, and test.

__Example__:

```go
type Closer interface {
    Close() error
}

type Writer interface {
    Write(p []byte) (n int, err error)
}
```

These interfaces are small and focused, making them easy to implement and compose.

#### 3. __Use Interface Satisfaction Implicitly__

- __Implicit Satisfaction__: Go's interfaces are satisfied implicitly, meaning a type doesn't need to declare that it implements an interface. Instead, if a type implements the methods defined by an interface, it automatically satisfies that interface.

__Example__:

```go
type File struct {}

func (f *File) Read(p []byte) (n int, err error) {
    // Implementation here
    return 0, nil
}

// File implicitly implements the Reader interface.
```

#### 4. __Prefer Using Interfaces for Parameters, Not Returns__

- __Dependency Injection__: When defining functions or methods, prefer accepting interfaces as parameters rather than returning them. This allows for greater flexibility and easier testing.

__Example__:

```go
func process(r io.Reader) error {
    // Function works with any type that implements io.Reader
    return nil
}
```

#### 5. __Return Concrete Types When Possible__

- __Concrete Return Types__: When returning values from functions, it's often better to return concrete types rather than interfaces. This provides more clarity and reduces ambiguity about the type of the returned value.

__Example__:

```go
func NewFile(name string) *File {
    return &File{name: name}
}
```

#### 6. __Design for the Zero Value__

- __Useful Zero Value__: Ensure that the zero value of your types that implement interfaces is useful. This allows for more flexible and error-resistant code.

__Example__:

```go
type Counter struct {
    count int
}

func (c *Counter) Increment() {
    c.count++
}

// Counter's zero value is ready to use without initialization.
```

#### 7. __Avoid Creating Interface Types for Only One Implementer__

- __One Implementer Pitfall__: If you have an interface with only one concrete implementation, reconsider whether the interface is necessary. Interfaces are most useful when they abstract over multiple types.

__Example__:

```go
type Database interface {
    Query(query string) ([]Result, error)
}

// If there's only one type implementing Database, the interface might be unnecessary.
```

#### 8. __Use Interface Composition__

- __Compose Small Interfaces__: Build larger interfaces by composing smaller, focused interfaces. This provides flexibility and reusability.

__Example__:

```go
type Reader interface {
    Read(p []byte) (n int, err error)
}

type Writer interface {
    Write(p []byte) (n int, err error)
}

type ReadWriter interface {
    Reader
    Writer
}
```

#### 9. __Document Interfaces Clearly__

- __Document Expected Behavior__: Clearly document the expected behavior of each method in an interface. This helps implementers understand the contract they are agreeing to by implementing the interface.

__Example__:

```go
type Storage interface {
    // Save persists the data and returns an error if the operation fails.
    Save(data []byte) error

    // Load retrieves data based on the key and returns an error if not found.
    Load(key string) ([]byte, error)
}
```

#### 10. __Use Interfaces in Tests for Mocks and Stubs__

- __Testing Flexibility__: Use interfaces to decouple your code from concrete implementations, making it easier to use mocks and stubs in tests. This improves the testability of your code.

__Example__:

```go
type EmailSender interface {
    Send(to string, body string) error
}

// Production implementation
type SMTPSender struct {}

func (s *SMTPSender) Send(to string, body string) error {
    // Actual sending logic
    return nil
}

// Test implementation
type MockSender struct {
    SentMessages []string
}

func (m *MockSender) Send(to string, body string) error {
    m.SentMessages = append(m.SentMessages, body)
    return nil
}
```

#### 11. __Avoid Exporting Unnecessary Interfaces__

- __Package-Private Interfaces__: Keep interfaces unexported unless they are meant to be implemented by types outside the package. This reduces the API surface and prevents misuse.

__Example__:

```go
// unexported interface
type sorter interface {
    Sort([]int)
}
```

#### 12. __Avoid Interface Pollution__

- __No "God" Interfaces__: Avoid creating large interfaces with many unrelated methods. This leads to interface pollution, making it harder for implementers and clients to use.

__Example__:

```go
// Bad practice: too many methods in one interface
type Everything interface {
    Read(p []byte) (n int, err error)
    Write(p []byte) (n int, err error)
    Close() error
    Seek(offset int64, whence int) (int64, error)
}
```
