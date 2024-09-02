---
tags:
  - go
  - ready
  - golang
  - online
---
# go-basic-server-structure
## Project Structure

- **Internal Packages**: Encapsulate the logic and data specific to your module, keeping it private and modular.
- **Utils Package**: Provides a centralized place for shared utility functions that multiple internal packages can use.
- **Public Package**: Exposes a clean interface for starting the application, while keeping the internal details hidden.


```plain
myapp/
│
├── main.go # Entry point of the application. It starts the server by calling the `StartServer` function from the `public` package.
├── go.mod
├── internal/
│   ├── controller/ # Contains HTTP handlers for user-related routes. It uses utility functions from the `utils` package.
│   │   └── user_controller.go
│   ├── service/ # Contains business logic related to users.
│   │   └── user_service.go
│   ├── model/ # Contains the data model for users.
│   │   └── user.go
│   └── utils/ # Contains shared utility functions. In this case, a function to mask email addresses.
│       └── string_utils.go
└── public/ # Sets up and starts the Gin server, exposing the necessary public API to run the application.
    └── api.go
```

### 1. **Internal Packages**

#### `internal/model/user.go`

Define the data model for users.

```go
package model

// User represents a user in the system.
type User struct {
    ID    int    `json:"id"`
    Name  string `json:"name"`
    Email string `json:"email"`
}
```

#### `internal/service/user_service.go`

Handle the business logic related to users.

```go
package service

import "myapp/internal/model"

// UserService provides operations related to users.
type UserService struct {
    users []model.User
}

// NewUserService creates a new UserService instance.
func NewUserService() *UserService {
    return &UserService{
        users: []model.User{
            {ID: 1, Name: "John Doe", Email: "john@example.com"},
            {ID: 2, Name: "Jane Smith", Email: "jane@example.com"},
        },
    }
}

// GetAllUsers returns a list of users.
func (s *UserService) GetAllUsers() []model.User {
    return s.users
}
```

#### `internal/controller/user_controller.go`

Define the HTTP handlers for user-related routes.

```go
package controller

import (
    "net/http"
    "myapp/internal/service"
    "myapp/internal/utils"
    "github.com/gin-gonic/gin"
)

// UserController handles user-related HTTP requests.
type UserController struct {
    userService *service.UserService
}

// NewUserController creates a new UserController instance.
func NewUserController(userService *service.UserService) *UserController {
    return &UserController{userService: userService}
}

// GetUsers handles the GET /users request.
func (uc *UserController) GetUsers(c *gin.Context) {
    users := uc.userService.GetAllUsers()
    for i := range users {
        users[i].Email = utils.MaskEmail(users[i].Email) // Example usage of utility function
    }
    c.JSON(http.StatusOK, users)
}
```

#### `internal/utils/string_utils.go`

Define shared utility functions.

```go
package utils

// MaskEmail masks the domain part of the email address.
func MaskEmail(email string) string {
    // Simple example of masking the email domain
    parts := strings.Split(email, "@")
    if len(parts) != 2 {
        return email
    }
    return parts[0] + "@****.com"
}
```

### 2. **Public Package**

#### `public/api.go`

Set up the Gin server and route handlers.

```go
package public

import (
    "github.com/gin-gonic/gin"
    "myapp/internal/controller"
    "myapp/internal/service"
)

// StartServer initializes and starts the Gin server.
func StartServer() {
    router := gin.Default()

    userService := service.NewUserService()
    userController := controller.NewUserController(userService)

    // Define routes
    router.GET("/users", userController.GetUsers)

    // Start the server
    router.Run(":8080")
}
```

### 3. **Main Application File**

#### `main.go`

Start the server by calling the public API.

```go
package main

import "myapp/public"

func main() {
    // Start the server
    public.StartServer()
}
```