---
tags:
- ready
- online
- reviewed
- summary
- informatic
- data-transference
- communication
- go
---

# centrifugo

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-realtime-communication/centrifugo)__

## Centrifugo

Centrifugo is an open-source scalable real-time messaging server. Centrifugo can instantly deliver messages to application online users connected over supported transports (WebSocket, HTTP-streaming, SSE/EventSource, GRPC, SockJS, WebTransport). Centrifugo has the concept of a channel – so it’s a user-facing PUB/SUB server.

Visit the following resources to learn more:

- [@opensource@GitHub Repository](https://github.com/centrifugal/centrifugo)
- [@article@Getting started](https://centrifugal.dev/docs/getting-started/introduction)

### __Centrifugo__ Use Cases

1. __Scalable Real-time Dashboard__:
   - __Scenario__: A large-scale dashboard for monitoring live data, such as stock prices, requires real-time updates across multiple clients.
   - __Why Centrifugo?__: Centrifugo’s pub/sub system allows multiple users to receive real-time updates. It can handle high concurrency and scales effortlessly with Redis or NATS as a backend.

   __Example Setup__:
   - Run Centrifugo as a standalone server.
   - Backend publishes events to Centrifugo via HTTP API.
   - Frontend clients subscribe to channels and receive updates in real-time.

   ```bash
   centrifugo --config=config.json
   ```

   Backend example (publishing data):

   ```go
   type PublishRequest struct {
       Channel string `json:"channel"`
       Data    string `json:"data"`
   }

   func publishToCentrifugo(channel, data string) {
       reqBody, _ := json.Marshal(PublishRequest{Channel: channel, Data: data})
       http.Post("http://localhost:8000/api", "application/json", bytes.NewBuffer(reqBody))
   }
   ```

2. __Real-time Multiplayer Game Server__:
   - __Scenario__: You're building a multiplayer game with multiple users interacting in real-time.
   - __Why Centrifugo?__: Centrifugo can manage real-time interactions (e.g., player movement, actions) efficiently across many clients. It handles pub/sub communication at scale, supports low-latency messaging, and can manage multiple rooms (game instances).

   Frontend clients would subscribe to the relevant game room channels, and the game server would publish game events (player moves, actions) to those channels via Centrifugo.
