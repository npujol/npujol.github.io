---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# grpc-gateway

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/grpc-gateway)__

## Grpc gateway

gRPC-Gateway creates a layer over gRPC services that will act as a RESTful service to a client. It is a plugin of protoc. It reads a gRPC service definition and generates a reverse-proxy server which translates a RESTful JSON API into gRPC.

Visit the following resources to learn more:

- [@opensource@Grpc-gateway Github](https://github.com/grpc-ecosystem/grpc-gateway/)
- [@article@Grpc-gateway Doc](https://grpc-ecosystem.github.io/grpc-gateway/)
- [@feed@Explore top posts about gRPC](https://app.daily.dev/tags/grpc?ref=roadmapsh)

### gRPC-Gateway__

- __Purpose__: Allows RESTful clients to interact with gRPC services.
- __Best For__: Providing both REST and gRPC APIs for microservices.

   __Example__:

   ```go
   mux := runtime.NewServeMux()
   err := pb.RegisterYourServiceHandlerFromEndpoint(ctx, mux, "localhost:50051", opts)
   ```

### gRPC-Gateway__ - RESTful API for gRPC Services

   __Solution Example__: __Mobile Backend for Streaming Service__

- __Use Case__: A mobile app interacts with backend services using a REST API, but the backend communicates via gRPC.
- __Framework Usage__: The __gRPC-Gateway__ exposes a REST API for the mobile app, while internal services communicate using gRPC.
- __Workflow__:
     1. The mobile app calls a REST endpoint via __gRPC-Gateway__.
     2. The gateway translates the REST request into a gRPC call to the __StreamingService__.

   __Example__:

   ```go
   mux := runtime.NewServeMux()
   err := pb.RegisterStreamingServiceHandlerFromEndpoint(ctx, mux, "localhost:50051", opts)
   ```
