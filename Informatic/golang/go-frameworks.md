---
tags:
- ready
- online
- reviewed
- summary
- informatic
- frameworks
- go
---
# frameworks

## Contents

- [[go-beego]]
- [[go-gin]]
- [[go-revel]]
- [[go-echo]]
- [[go-gorilla]]
- [[go-gofiber]]

__Roadmap info from [roadmap website](https://roadmap.sh/golang/frameworks)__

| __Framework__      | __Description__                                                                                   | __Strengths__                                                                                     |
|--------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| __Gin__            | A fast, minimalist web framework focused on high performance and small memory footprint.           | Extremely fast, lightweight, and highly performant with a focus on building simple REST APIs.      |
| __Echo__           | A high-performance web framework designed for ease of use, minimalism, and scalability.            | Built-in middleware, fast router, and great for building REST APIs with structured request/response.|
| __Revel__          | A full-featured MVC framework with built-in hot-reload and similar features to Beego.              | Rich in features, batteries included (ORM, routing, testing, validation) like Beego.               |
| __Buffalo__        | A full-featured framework focused on rapid development and ease of use with conventions over configuration. | CLI tools, hot-reloading, and good integration for front-end and back-end development.             |
| __Fiber__          | An Express.js-inspired web framework built on top of Fasthttp, optimized for performance.          | Extremely fast and lightweight with excellent performance for building high-speed APIs.            |
| __Chi__            | A lightweight and idiomatic framework that emphasizes router design with middleware support.       | Extremely flexible, modular, and fast, great for building modular web apps.                        |
| __Martini__        | A lightweight web framework that provides a lot of functionality with minimalistic code.           | Easy to use, lightweight, but not as performant as newer frameworks like Gin or Echo.              |
| __Iris__           | A feature-rich and fast web framework offering similar capabilities to Beego with more performance optimizations. | Built-in WebSocket support, rich middleware, and routing system, suitable for large apps.         |
| __Goa__            | A design-first framework where APIs are defined via DSLs before being implemented.                 | Focus on design and API-first approach, generating consistent Go code based on the design specs.    |
| __Gorilla__        | A set of libraries (not a full framework) for building robust web applications with custom routing and middleware. | Highly modular, with libraries for websockets, sessions, and routing, allowing you to compose your framework. |

### Key Comparisons__

- __Gin vs Echo__: Both are high-performance and minimalistic, great for REST APIs. Echo has more built-in middleware, while Gin is slightly faster.
- __Revel vs Buffalo__: Both are more "batteries-included" like Beego, with built-in ORMs, routing, and utilities for rapid development. Buffalo focuses more on productivity with hot-reloading and CLI tools, while Revel is closer to traditional MVC.
- __Fiber vs Iris__: Fiber is inspired by Express.js and focuses on simplicity and performance, while Iris offers more features like WebSocket support and a powerful routing system for larger apps.
- __Chi vs Gorilla__: Chi is great for building modular applications with a small memory footprint, while Gorilla is more focused on providing a toolkit of libraries rather than a full-fledged framework.

### When to Choose

- If you prefer a __high-performance minimalist__ framework: Choose __Gin__, __Echo__, or __Fiber__.
- If you need a __full-featured MVC__ framework similar to Beego: Choose __Revel__ or __Buffalo__.
- If you want to __modularly compose__ your web application: Choose __Chi__ or __Gorilla__.
- If you prefer a __design-first approach__: Choose __Goa__.

Each of these frameworks has its strengths, and the best choice will depend on your project’s specific needs regarding performance, features, and complexity.
