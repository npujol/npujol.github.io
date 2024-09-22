---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# protocol-buffers

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/protocol-buffers)__

## Protocol buffers

Protocol Buffers(Protobuf) is a free, open-source, language-neutral, platform-neutral, extensible data format used to serialize structured data. It’s like JSON, except it’s smaller and faster, and it generates native language bindings.

Some of the advantages of using protocol buffers include:

- Compact data storage
- Fast parsing
- Availability in many programming languages
- Optimized functionality through automatically-generated classes

Visit the following resources to learn more:

- [@opensource@Protobuf Github](https://github.com/protocolbuffers/protobuf/)
- [@article@Protobuf Doc](https://developers.google.com/protocol-buffers/)
- [@article@Protobuf with Go](https://developers.google.com/protocol-buffers/docs/gotutorial/)
- [@feed@Explore top posts about Backend Development](https://app.daily.dev/tags/backend?ref=roadmapsh)

### Protocol Buffers__

- __Purpose__: Efficient serialization format used by gRPC.
- __Best For__: Defining APIs and exchanging data between microservices efficiently.

   __Example__:

   ```proto
   syntax = "proto3";
   message User {
       string name = 1;
       int32 id = 2;
   }
   ```

### Protocol Buffers__ - Data Serialization for Microservices

   __Solution Example__: __Cross-Service Communication in a FinTech App__

- __Use Case__: A FinTech platform with services such as trading, portfolio management, and market data requires efficient data serialization for communication between services.
- __Framework Usage__: Services use __Protocol Buffers__ for API definitions and communication, ensuring fast and efficient data transfer.
- __Workflow__:
     1. __TradingService__ sends trading orders to __PortfolioService__ using Protocol Buffers.
     2. __PortfolioService__ processes the order and sends a confirmation back to __TradingService__.

   __Example__:

   ```proto
   message Order {
       string id = 1;
       double amount = 2;
   }
   ```
