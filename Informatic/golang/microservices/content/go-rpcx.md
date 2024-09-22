---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# rpcx

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/rpcx)__

## Rpcx

Rpcx is a RPC (Remote Procedure Call) framework like Alibaba Dubbo and Weibo Motan. Some of the advantages on using Rpcx:

- Simple: easy to learn, easy to develop, easy to integrate and easy to deploy
- Performance: high performance (>= grpc-go)
- Cross-platform: support raw slice of bytes, JSON, Protobuf and MessagePack. Theoretically it can be used with java, php, python, c/c++, node.js, c# and other platforms
- Service discovery and service governance: support zookeeper, etcd and consul.

Visit the following resources to learn more:

- [@article@Rpcx English Documentation](https://en.doc.rpcx.io/)
- [@opensource@Rpcx Github](https://github.com/smallnest/rpcx)
- [@official@Rpcx Official Website](https://rpcx.io/)

### RPCx__

- __Purpose__: High-performance RPC framework.
- __Key Features__: Multiple codecs (Protobuf, JSON), plugins for service discovery, rate limiting, and tracing.
- __Best For__: High-performance RPC communication between services.

   __Example__:

   ```go
   s := server.NewServer()
   s.RegisterName("Arith", new(Arith), "")
   s.Serve("tcp", ":8972")
   ```

### RPCx__ - High-Performance RPC

   __Solution Example__: __Real-time Online Gaming__

- __Use Case__: In an online multiplayer game, players’ interactions need to be communicated between game servers with low latency.
- __Framework Usage__: Using __RPCx__, game servers can handle real-time communication between players by calling remote methods with minimal delay and high performance.
- __Workflow__:
     1. A __GameServer__ uses RPC to request updates from a central __PlayerStatsService__.
     2. The __PlayerStatsService__ can return the latest statistics in real-time.

   __Example__:

   ```go
   client := client.NewClient(client.DefaultOption)
   client.Connect("tcp", "localhost:8972")
   var reply int
   err := client.Call(context.Background(), "GameServer.UpdatePlayerStats", &args, &reply)
   ```
