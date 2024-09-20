---
tags:
- ready
- online
- reviewed
- summary
- informatic
- database
- packages
- logging
- go
---

# logging

## Contents

- [[go-zap]]
- [[go-zerolog]]
- [[go-log-slog]]
- [[go-logrus]]

__Roadmap info from [roadmap website](https://roadmap.sh/golang/logging)__

Here's a comparison of __Zap__, __Zerolog__, __Log/slog__, and __Logrus__ in a markdown table:

| __Feature__            | __Zap__                                            | __Zerolog__                                        | __Log/slog__ (Go's Structured Logger) | __Logrus__                                          |
|------------------------|----------------------------------------------------|----------------------------------------------------|---------------------------------------|----------------------------------------------------|
| __Purpose__            | High-performance, structured logging               | Zero-allocation, structured logging                | Go's standard library for structured logging | Simple, feature-rich logging library with hooks for customization |
| __Performance__        | Extremely fast, optimized for high throughput      | Extremely fast, minimal allocations (zero-allocation) | Fast and lightweight | Moderate performance, higher memory usage than Zap and Zerolog |
| __Design Philosophy__  | Focus on performance and structured logging        | Zero memory allocations for performance efficiency | Simple and modular, part of Go’s core ecosystem | Focus on ease of use and feature richness over raw performance |
| __Structured Logging__ | Yes, supports fields and structured data           | Yes, highly structured, supports complex data      | Yes, native support for key-value pairs | Yes, but with a less efficient API compared to Zap/Zerolog |
| __Ease of Use__        | Moderate (requires initial setup, multiple options) | Easy to use with a fluent API                      | Very simple API, part of Go’s standard | Very easy to use, beginner-friendly with a lot of built-in features |
| __Logging Levels__     | Debug, Info, Warn, Error, DPanic, Panic, Fatal     | Trace, Debug, Info, Warn, Error, Fatal, Panic      | Supports multiple log levels | Panic, Fatal, Error, Warn, Info, Debug, Trace |
| __Log Format__         | JSON and custom formats                            | JSON only                                          | JSON and other formats using adapters | Text by default, JSON via custom formatter |
| __Configurability__    | High (many options for customization)              | Highly configurable                                | Basic, but flexible with hooks or handlers | High configurability, with hooks for custom formatting and outputs |
| __Context Support__    | Yes, context-aware logging                         | Yes, integrates context for structured logs        | Yes, integrates with Go's `context` package | No built-in support (can be handled with manual integration) |
| __Output Destinations__| Files, stdout, custom writers                      | Files, stdout, custom writers                      | File, stdout, and customizable handlers | Files, stdout, custom writers |
| __Dependency__         | External library (`uber-go/zap`)                   | External library (`rs/zerolog`)                    | Native Go library (starting in Go 1.21) | External library (`sirupsen/logrus`) |
| __Serialization__      | High performance serialization (optimized for JSON)| Zero-allocation serialization                      | Lightweight serialization for key-value pairs | Higher memory usage, with more flexibility in output formatting |
| __Best Use Case__      | High-throughput, production-grade applications     | High-performance logging with zero memory overhead | Lightweight applications, standard logging in Go projects | Simple applications needing easy-to-implement logging with customizable features |
| __Community/Support__  | Large community, actively maintained               | Smaller but active community, popular in performance-focused applications | Growing adoption since it's part of Go’s standard library | Large, well-established community with many extensions available |

### __Summary of Each:__

- __Zap__:
  - __Best For__: High-performance production systems that need structured logging and customization options.
  - __Use Case__: Microservices, logging-heavy applications requiring low-latency log output with structured data.

- __Zerolog__:
  - __Best For__: High-performance logging in applications where memory allocations need to be minimized, and logging speed is a priority.
  - __Use Case__: Low-latency, high-throughput services such as financial systems, distributed systems, or real-time APIs.

- __Log/slog__:
  - __Best For__: Developers who want to stick to Go's standard library and need lightweight structured logging without external dependencies.
  - __Use Case__: Lightweight Go applications or teams that prefer staying within the Go ecosystem and want basic structured logging.

- __Logrus__:
  - __Best For__: Simpler applications that value ease of use and flexibility in logging formats and outputs over raw performance.
  - __Use Case__: Small to medium applications where setup speed and ease of use are priorities, or where you need a flexible logging solution that can easily be extended with hooks.

### __When to Choose__

- __Zap__: If you need highly efficient, high-performance logging with lots of customization and structured data handling.
- __Zerolog__: If zero-allocation performance is critical, and you need extremely fast and memory-efficient logging.
- __Log/slog__: If you prefer using Go's standard library, need structured logging, and don't want external dependencies.
- __Logrus__: If ease of use, flexibility, and community support are priorities, and you're not concerned with the highest logging performance or memory overhead.
