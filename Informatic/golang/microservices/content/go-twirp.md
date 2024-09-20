---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# twirp

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/twirp)__

## Twirp

Twirp is a framework for service-to-service communication emphasizing simplicity and minimalism. It generates routing and serialization from API definition files and lets you focus on your application’s logic instead of thinking about folderol like HTTP methods and paths and JSON.

Twirp is similar to gRPC, but without the custom HTTP server and transport implementations: it runs on the standard library’s extremely-well-tested-and-high-performance net/http Server. It can run on HTTP 1.1, not just http/2, and supports JSON serialization for easy debugging.

Visit the following resources to learn more:

- [@opensource@GitHub Repository](https://github.com/twitchtv/twirp)
- [@article@Getting started](https://twitchtv.github.io/twirp/docs/intro.html)

### __Twirp__

- __Purpose__: A lightweight RPC framework using Protobuf or JSON.
- __Best For__: Simpler RPC-based microservices with minimal setup and overhead.

   __Example__:

   ```go
   twirpHandler := pb.NewHaberdasherServer(&Server{}, nil)
   http.ListenAndServe(":8080", twirpHandler)
   ```

### __Twirp__ - Lightweight RPC Framework

   __Solution Example__: __Simple Microservices for a SaaS Platform__

- __Use Case__: A SaaS platform with simple, small microservices (e.g., billing, authentication) that need efficient communication.
- __Framework Usage__: __Twirp__ allows each service to use lightweight RPC, supporting both Protobuf and JSON for simple inter-service communication.
- __Workflow__:
     1. __BillingService__ communicates with __AuthService__ using Twirp for authentication checks before processing payments.
     2. Services communicate over HTTP with minimal overhead using Protobuf for serialization.

   __Example__:

   ```go
   twirpHandler := pb.NewBillingServer(&Server{}, nil)
   http.ListenAndServe(":8080", twirpHandler)
   ```
