---
tags:
- ready
- online
- reviewed
- microservices
- go
---

# microservices

## Contents

- [[go-watermill]]
- [[go-rpcx]]
- [[go-kit]]
- [[go-micro]]
- [[go-zero]]
- [[go-protocol-buffers]]
- [[go-grpc-go]]
- [[go-grpc-gateway]]
- [[go-twirp]]

__Roadmap info from [roadmap website](https://roadmap.sh/golang/microservices)__

## Microservices

Microservices are an architectural approach to software development that allows the creation of a distributed application from deployable services that allow communication through a well-defined API. Being a solution to monoliths.

Visit the following resources to learn more:

- [officialMicroservice Patterns and Resources by Chris Richardson](https://microservices.io/index.html)
- [articleIntroduction to microservices](https://developer.ibm.com/learningpaths/get-started-application-modernization/intro-microservices/introduction/)
- [articleMicroservices AntiPatterns and Pitfalls - Mark Richards](https://www.oreilly.com/content/microservices-antipatterns-and-pitfalls/)
- [articleBuilding Microservices, 2nd Edition - Sam Newman](https://samnewman.io/books/building_microservices_2nd_edition/)
- [feedExplore top posts about Microservices](https://app.daily.dev/tags/microservices?ref=roadmapsh)

Here’s an overview of the listed Go libraries, frameworks, and tools relevant to __microservices__:

## Microservices in Go

Microservices architecture breaks down applications into smaller, manageable, and loosely coupled services that can independently scale and deploy. Go is widely used for building microservices due to its performance, concurrency model, and lightweight nature.

## Tools and Libraries

| __Library/Framework__ | __Description__                                                                                       | __Use Case__                                                                                               |
|-----------------------|-------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
| __Watermill__          | A message-driven Go library for building event-driven applications using messages and distributed systems. | Best suited for building event-driven microservices and communication between them using pub/sub patterns.   |
| __RPCx__               | A high-performance RPC framework that supports multiple codecs and plugins for service discovery.     | Suitable for building RPC-based microservices that need performance and flexibility across multiple protocols.|
| __Go-Kit__             | A robust, modular framework for building microservices in Go with a focus on service discovery, transport, and observability. | Ideal for large-scale microservice architectures with features like observability, logging, and monitoring.   |
| __Micro__              | A Go framework for distributed systems development with a built-in service discovery, API gateway, and message broker. | For building highly scalable, distributed applications with rich microservices tooling.                      |
| __Go-Zero__            | A web and RPC framework with integrated service discovery, concurrency control, and observability tools. | Great for developing web services and RPC with out-of-the-box support for high performance and stability.     |
| __Protocol Buffers__   | A language-agnostic binary serialization format developed by Google, commonly used with gRPC for efficient data exchange. | For defining service APIs and exchanging data in a binary format between microservices.                      |
| __gRPC-Go__            | The Go implementation of gRPC, a high-performance RPC framework using HTTP/2 and Protocol Buffers.    | Used for building highly performant, low-latency services with efficient communication between microservices. |
| __gRPC-Gateway__       | A plugin to automatically generate a reverse proxy for gRPC services, translating REST to gRPC calls. | Allows RESTful clients to communicate with gRPC services, providing both gRPC and REST access to services.   |
| __Twirp__              | A simpler alternative to gRPC, focused on JSON or Protobuf RPC with minimal overhead.                 | For lightweight services requiring simple and efficient RPC with optional JSON or Protobuf serialization.    |

### When to Choose

- __Event-driven systems__: Use __Watermill__ for messaging and pub/sub patterns.
- __High-performance RPC__: Use __RPCx__ or __gRPC-Go__ for efficient service-to-service communication.
- __Full-featured microservice frameworks__: __Go-Kit__ or __Micro__ are ideal for large, distributed architectures with rich tooling.
- __Lightweight microservices__: Use __Twirp__ or __gRPC-Gateway__ for simple, efficient RPC with optional JSON.
- __Efficient data serialization__: __Protocol Buffers__ with __gRPC-Go__ offers fast communication for high-throughput microservices.

### Summary of Use Cases

- __Watermill__: Event-driven systems like order processing.
- __RPCx__: High-performance, real-time systems like online gaming.
- __Go-Kit__: Large-scale enterprise applications like banking platforms.
- __Micro__: Distributed systems like IoT platforms.
- __Go-Zero__: High-performance web services like social media platforms.
- __Protocol Buffers__: Efficient cross-service communication in systems like FinTech.
- __gRPC-Go__: High-performance microservice communication in video streaming platforms.
- __gRPC-Gateway__: RESTful API gateways for mobile or web frontends in streaming services.
- __Twirp__: Lightweight RPC for simple microservices like SaaS platforms.
