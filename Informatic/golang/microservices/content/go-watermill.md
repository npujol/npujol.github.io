---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# watermill

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/watermill)__

## Watermill

Watermill is an event streaming library for handling asynchronous requests in go. It provides multiple sets of implementations for pub/sub.
e.g: You can use conventional pub/sub implementations like Kafka or RabbitMQ, but also HTTP or MySQL binlog, if that fits your use case.

Visit the following resources to learn more:

- [@official@Watermill Website](https://watermill.io/)

### Watermill__

- __Purpose__: Event-driven systems, pub/sub architecture.
- __Key Features__: Messaging abstraction, integrates with Kafka, RabbitMQ, Google Cloud Pub/Sub.
- __Best For__: Microservices communicating via asynchronous events and messages.

__Example__:

```go
pub, err := message.NewPublisher(
    rabbitmq.NewPublisherConfig("amqp://guest:guest@localhost:5672/"),
    nil,
)
```

### Watermill__ - Event-Driven Systems

   __Solution Example__: __E-Commerce Order Processing__

- __Use Case__: In an e-commerce platform, multiple services such as order management, inventory, and payment can communicate asynchronously using events.
- __Framework Usage__: Each service (e.g., OrderService, PaymentService, InventoryService) publishes or subscribes to messages via __Watermill__ using message brokers like Kafka or RabbitMQ.
- __Workflow__:
     1. __OrderService__ publishes a message to the `order_created` topic after a customer places an order.
     2. __PaymentService__ subscribes to the `order_created` topic and processes payments.
     3. __InventoryService__ updates stock based on the `order_processed` event.

   __Example__:

   ```go
   msg := message.NewMessage(watermill.NewUUID(), []byte(`{"order_id":123}`))
   err := publisher.Publish("order_created", msg)
   ```
