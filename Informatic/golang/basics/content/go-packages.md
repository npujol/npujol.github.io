---
tags:
- ready
- online
- reviewed
- go
- summary
- informatic
- types
- packages
---

# packages

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/packages)__

## Packages

Packages are the most powerful part of the Go language. The purpose of a package is to design and maintain a large number of programs by grouping related features together into single units so that they can be easy to maintain and understand and independent of the other package programs. This modularity allows them to share and reuse. In Go language, every package is defined with a different name and that name is close to their functionality like “strings” package and it contains methods and functions that only related to strings.

- [@article@How to create a package in Go](https://www.golang-book.com/books/intro/11)
- [@official@How to manage external dependencies in Go](https://go.dev/doc/modules/managing-dependencies)
- [@article@Go Packages explorer](https://pkg.go.dev/)
- [@article@Standard library](https://pkg.go.dev/std)
- [@article@Go Packages](https://www.programiz.com/golang/packages)

### Best Practices

Check [[go-basic-server-structure]].
### 1. **Organize Your Code into Packages**

- Group related code into packages based on functionality. For example, `models`, `handlers`, `utils`, etc.
- Avoid overly granular packages; strike a balance between too many and too few packages.

```go
myapp/
│
├── main.go
├── go.mod
├── models/
│   └── user.go
├── handlers/
│   ├── auth.go
│   └── profile.go
└── utils/
    └── hash.go
```

### 2. **Use Descriptive Package Names**

- Package names should be short, lowercase, and descriptive of the package’s functionality.
- Avoid names like `utils` or `common` unless absolutely necessary, as they are often too generic.
**`helpers`**

- **Avoid**: `helpers`
- **Alternative**: `httphelpers` (for HTTP-related utility functions), `fileutils` (for file operations)

```plain
myapp/
├── main.go
├── emailservice/
│   └── email.go
└── paymentservice/
    └── payment.go
```
### 3. **Keep Package Names Singular**

- Go convention favors singular package names (`http`, `json`, `net`, etc.). Plural names can lead to awkward or less readable import paths.

### 4. **Avoid Stuttering**

- If your package is named `config`, avoid naming a type or function within it `ConfigConfig` or `config.Config`. Instead, use `config.Config` or `config.Load()`.

### 5. **Keep the API Surface Small**

- Only export what is necessary. Start with unexported (`lowercase`) functions and types, and only export (`Uppercase`) what needs to be used outside the package.

### 6. **Minimize Dependencies**

- Avoid unnecessary dependencies to keep your packages lightweight and easier to maintain.
- Prefer using __Go’s standard library__ when possible.

### 7. **Write Tests for Your Packages**

- Place your test files in the same package as the code they test. Use the `_test.go` suffix for test files.
- __Test__ only the __exported functions__ and __types__ to ensure package behavior is correct from the consumer's perspective.

### 8. **Keep Package-Specific Configurations Inside the Package**

- Configuration settings, environment variables, or constants specific to a package should reside within that package, not globally.

### 9. **Version Control Your Packages**

- Use Go modules (`go.mod`) for versioning your packages. This makes it easier to manage dependencies and versions across projects.

### 10. **Document Your Packages**

- Provide clear and concise documentation using comments, especially for exported functions, types, and packages.
- The first sentence in a comment should be a summary and should start with the name of the item being documented.

### 11. **Use Package-Level Variables and Constants Sparingly**

- Avoid global state in packages. Prefer passing configuration or state through function parameters or using types with methods.

### 12. **Keep Package Interfaces Small**

- Define small, focused interfaces within your packages to reduce coupling and increase flexibility. Consumers can then create their own implementations if needed.

### 13. **Leverage Init Functions Cautiously**

- Use `init()` functions sparingly for package initialization. Overuse of `init()` can make code harder to understand and test. In Go, `init()` functions are used to initialize package-level variables or perform setup tasks before the main execution of the program starts.
#### Best Practices for Using `init()`

1. **Keep Initialization Simple**: Use `init()` functions for simple, necessary initialization that are integral to the package's operation. Avoid complex or time-consuming operations in `init()` functions.
2. **Limit Use**: Minimize the use of `init()` functions. Prefer using explicit initialization functions that can be called in a controlled manner from `main()` or test setups.
3. **Avoid Side Effects**: Avoid putting logic in `init()` functions that has side effects, such as network calls, file I/O, or complex computations.
4. **Document `init()` Functions**: Clearly document the purpose of `init()` functions so that their role in the package is understandable.

### 14. **Avoid Circular Dependencies**

- Circular dependencies between packages can lead to compilation errors and complex code. Refactor your code to avoid such dependencies.

### 15. **Use Internal Packages for Private Code**

- The `internal` package is a convention in Go to keep some packages private to a module or repository. Code within `internal` cannot be imported by other modules.

### 16. **Structure Your Repository for Scalability**

- Use the standard Go project layout when possible:
    - `cmd/` for command-line applications
    - `pkg/` for library code that can be imported by other projects
    - `internal/` for private application and library code
    - `api/` for API definitions and related files

### 17. **Use `.go` File Naming Conventions**

- Name files according to their functionality (e.g., `http_server.go`, `auth_middleware.go`), making it easier to locate specific parts of your codebase.

### 18. **Prefer Embedding Over Inheritance**

- Go favors composition over inheritance. Use struct embedding to extend functionality instead of trying to mimic inheritance.

### 19. **Handle Errors Gracefully**

- Return errors from your functions and handle them appropriately. Avoid panic unless absolutely necessary, such as in unrecoverable situations.

### 20. **Document Your Go Module (README.md)**

- Provide a `README.md` or equivalent documentation for your module, explaining the package’s purpose, usage examples, and installation instructions.