---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# grpc-go

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/grpc-go)__

## gRPC Go

Go language implementation of gRPC(gRPC is a technology for implementing RPC APIs).

Visit the following resources to learn more:

- [@opensource@gRPC-go Github](https://github.com/grpc/grpc-go/)
- [@article@gRPC-go Doc](https://pkg.go.dev/google.golang.org/grpc/)
- [@official@Basic tutorial introduction to gRPC in Go.](https://grpc.io/docs/languages/go/basics/)
- [@feed@Explore top posts about gRPC](https://app.daily.dev/tags/grpc?ref=roadmapsh)

### gRPC-Go__

- __Purpose__: High-performance, low-latency RPC framework using HTTP/2.
- __Best For__: Building performant microservices that require fast communication.

   __Example__:

   ```go
   conn, err := grpc.Dial(":50051", grpc.WithInsecure())
   defer conn.Close()
   client := pb.NewGreeterClient(conn)
   ```

### gRPC-Go__ - High-Performance Communication Between Services

   __Solution Example__: __Video Streaming Platform__

- __Use Case__: A video streaming platform requires high-performance communication between its services for tasks like encoding, streaming, and user session management.
- __Framework Usage__: __gRPC-Go__ ensures fast, low-latency communication between __StreamingService__, __EncoderService__, and __UserSessionService__.
- __Workflow__:
     1. __UserSessionService__ communicates with __StreamingService__ over gRPC to manage user connections and streaming quality.
     2. __EncoderService__ encodes video in real-time and sends updates to __StreamingService__ via gRPC.

   __Example__:

   ```go
   conn, err := grpc.Dial(":50051", grpc.WithInsecure())
   client := pb.NewStreamingClient(conn)
   ```
