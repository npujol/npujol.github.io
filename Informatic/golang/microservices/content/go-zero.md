---
tags:

- ready
- online
- reviewed
- microservices
- go
- frameworks

---

# go-zero

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/go-zero)__

## go-zero framework

go-zero is a web and rpc framework with lots of engineering best practices builtin. It’s born to ensure the stability of the busy services with resilience design, and has been serving sites with tens of millions users for years.

Visit the following resources to learn more:

- [@article@Go-zero](https://go-zero.dev/)
- [@article@Go-zero Docs](https://go-zero.dev/docs/introduction)
- [@opensource@GitHub Repository](https://github.com/zeromicro/go-zero)
- [@feed@Explore top posts about Golang](https://app.daily.dev/tags/golang?ref=roadmapsh)

### Go-Zero__

- __Purpose__: Web and RPC services with integrated service discovery, concurrency control, and observability.
- __Key Features__: Concurrency control, built-in observability, and service governance.
- __Best For__: Web and RPC services focusing on scalability and performance.

   __Example__:

   ```go
   server := zrpc.MustNewServer(c.RpcServerConf, func(grpcServer *grpc.Server) {
       pb.RegisterGreeterServer(grpcServer, svc)
   })
   ```

### Go-Zero__ - High-Performance Web and RPC Services

   __Solution Example__: __High-Traffic Social Media Application__

- __Use Case__: A social media platform with features like user profiles, posts, likes, and comments requires high concurrency and low-latency responses.
- __Framework Usage__: With __Go-Zero__, web services like __ProfileService__ and __PostService__ handle high traffic efficiently, using built-in concurrency control and rate limiting to protect the system.
- __Workflow__:
     1. __ProfileService__ and __PostService__ handle millions of requests, leveraging __Go-Zero__'s built-in features for concurrency.
     2. Services can be scaled out to handle increasing loads without changing the codebase significantly.

   __Example__:

   ```go
   server := zrpc.MustNewServer(c.RpcServerConf, func(grpcServer *grpc.Server) {
       pb.RegisterProfileServer(grpcServer, svc)
   })
   ```
