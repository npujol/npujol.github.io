---
tags:
- ready
- online
- reviewed
- microservices
- go
- frameworks
---

# micro

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-microservices/micro)__

## Micro

It is an API first development platform. It leverages the microservices architecture pattern and provides a set of services which act as the building blocks of a platform.

Visit the following resources to learn more:

- [@official@Official Website](https://micro.dev/)
- [@opensource@Micro Github](https://github.com/micro/micro)

### __Micro__

- __Purpose__: Distributed systems development with built-in tooling.
- __Key Features__: Service discovery, API gateway, message broker, built-in CLI.
- __Best For__: Full-featured microservices architecture with service orchestration and rich tooling.

   __Example__:

   ```go
   service := micro.NewService(micro.Name("greeter"))
   service.Init()
   ```

### __Micro__ - Distributed System with Service Orchestration

   __Solution Example__: __IoT Platform__

- __Use Case__: In an IoT platform with numerous devices, you need scalable backend services to collect and process sensor data.
- __Framework Usage__: Using __Micro__, different services (e.g., __DeviceService__, __DataProcessorService__) can be registered and discovered. Data processing happens asynchronously, and an API gateway exposes the service.
- __Workflow__:
     1. __DeviceService__ collects sensor data and sends it to __DataProcessorService__ for analysis.
     2. __DataProcessorService__ scales horizontally based on load, using service discovery to route requests.
     3. __API Gateway__ allows external systems to query processed data.

   __Example__:

   ```go
   service := micro.NewService(micro.Name("device"))
   service.Init()
   ```
