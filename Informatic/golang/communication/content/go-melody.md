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

# melody

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-realtime-communication/melody)__

## Melody

Melody is websocket framework based on [github.com/gorilla/websocket](https://github.com/gorilla/websocket) that abstracts away the tedious parts of handling websockets. It gets out of your way so you can write real-time apps.

Visit the following resources to learn more:

- [@opensource@GitHub Repository](https://github.com/olahol/melody)

### Melody__ Use Cases

1. __Simple Chat Application__:
   - __Scenario__: You're building a small real-time chat application that doesn't require complex scaling or high concurrency.
   - __Why Melody?__: Melody provides lightweight WebSocket support, allowing you to handle real-time messaging between users with ease. Since it's integrated into your Go application, there's no need for external services.

   ```go
   m := melody.New()

   http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
       http.ServeFile(w, r, "index.html")
   })

   http.HandleFunc("/ws", func(w http.ResponseWriter, r *http.Request) {
       m.HandleRequest(w, r)
   })

   m.HandleMessage(func(s *melody.Session, msg []byte) {
       m.Broadcast(msg)
   })

   http.ListenAndServe(":5000", nil)
   ```

2. __Real-time Notifications for a Small Web App__:
   - __Scenario__: A web application needs real-time notifications (e.g., for task updates or comments).
   - __Why Melody?__: Since Melody can easily handle WebSocket connections, it’s a simple way to notify users in real-time about new updates or messages, without complex infrastructure.
