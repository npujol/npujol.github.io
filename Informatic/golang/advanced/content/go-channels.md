---
tags:
- ready
- online
- reviewed
- summary
- informatic
- data-structure
- data-representation
- advanced
- concurrency
- goroutines
- go
- data-transference
- channels
---

# channels

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/channels)__

## Channels

Channels are the pipes that connect concurrent [[go-goroutines]]. You can send values into channels from one goroutine and receive those values into another goroutine.

Channels are a typed conduit through which you can send and receive values with the channel operator, `<-` .

- [@official@Channels](https://go.dev/tour/concurrency/2)
- [@official@Effective Go: Channels](https://go.dev/doc/effective_go#channels)
- [@article@Go by Example: Channels](https://gobyexample.com/channels)
- [@article@Channels in Golang](https://golangbot.com/channels/)
- [@video@Channels](https://www.youtube.com/watch?v=e4bu9g-bYtg)
- [@video@Golang Channel Basics You must Know!](https://youtu.be/LgCmPHqAuf4)

## Tips

- Communication Over Shared Memory: Use channels to communicate between goroutines, not to share memory.
- Channel Closure: Close channels when done sending data, but only from the sender's side.
- Buffered Channels: Use buffered channels to improve performance when appropriate.
- Select Statements: Use select to handle multiple channels concurrently.
- Nil Channels: Avoid using nil channels to prevent deadlocks.
- Channel Direction: Specify channel direction in function parameters to make the intent clear.
- Goroutine Leaks: Ensure all goroutines complete their work to avoid leaks.

### Use Channels for Communication, Not for Shared Memory

Channels are designed for communication between goroutines. Avoid using them to share memory or data directly.

```go

package main

import "fmt"

func worker(ch chan int) {
    for i := 0; i < 5; i++ {
        ch <- i
    }
    close(ch)
}

func main() {
    ch := make(chan int)
    go worker(ch)
    for value := range ch {
        fmt.Println(value)
    }
}
```

Explanation:

- The worker goroutine sends values to the channel.
- The main goroutine receives and processes these values.

### Close Channels to Signal Completion

When a goroutine is done sending values on a channel, it should close the channel to indicate that no more values will be sent. This is particularly useful when using range to receive values from the channel.

Example:

```go

package main

import "fmt"

func sendData(ch chan int) {
    for i := 1; i <= 5; i++ {
        ch <- i
    }
    close(ch) // Signal that no more data will be sent
}

func main() {
    ch := make(chan int)
    go sendData(ch)

    for value := range ch {
        fmt.Println(value)
    }
}
```

Explanation:

- The sendData function closes the channel after sending all values.
- The main function reads from the channel until it is closed.

#### Avoid Closing Channels from the Receiver Side

Only the sender should close the channel. Closing a channel from the receiver side can lead to a panic, as it breaks the assumption that the sender controls the channel lifecycle.

Good Practice:

- Sender closes the channel once it is done sending data.

Bad Practice:

- Receiver trying to close a channel that it doesn't own.

#### Use Buffered Channels When Appropriate

Buffered channels can improve performance by reducing the need for goroutines to block when sending or receiving. However, be cautious with buffer sizes and avoid making them too large, as this can lead to memory issues.

Example:

```go

package main

import (
    "fmt"
    "time"
)

func worker(ch chan int) {
    for i := 0; i < 3; i++ {
        fmt.Println("Sending:", i)
        ch <- i
        time.Sleep(time.Second)
    }
    close(ch)
}

func main() {
    ch := make(chan int, 2) // Buffered channel with a capacity of 2
    go worker(ch)

    for value := range ch {
        fmt.Println("Received:", value)
    }
}
```

Explanation:

- The buffered channel allows the worker to send multiple values before blocking, improving concurrency.

### Use Select Statements to Handle Multiple Channels

The select statement is a powerful tool for handling multiple channels in a non-blocking way. Use it to wait on multiple channels and handle whichever one is ready first.

Example:

```go

package main

import (
    "fmt"
    "time"
)

func main() {
    ch1 := make(chan string)
    ch2 := make(chan string)

    go func() {
        time.Sleep(2 * time.Second)
        ch1 <- "Message from channel 1"
    }()

    go func() {
        time.Sleep(1 * time.Second)
        ch2 <- "Message from channel 2"
    }()

    for i := 0; i < 2; i++ {
        select {
        case msg1 := <-ch1:
            fmt.Println(msg1)
        case msg2 := <-ch2:
            fmt.Println(msg2)
        }
    }
}
```

Explanation:

- The select statement waits for either ch1 or ch2 to be ready, handling whichever is ready first.

### Avoid Using Nil Channels

A nil channel blocks forever on send and receive operations. This behavior can be useful in some scenarios, but it’s best to avoid accidentally using nil channels as it may cause deadlocks.

Example:

```go

package main

import "fmt"

func main() {
    var ch chan int // Nil channel

    // The following line will block forever if uncommented
    // ch <- 1

    fmt.Println("This will never print if the above line is uncommented.")
}
```

Explanation:

-Sending or receiving on a nil channel will block forever, which can lead to deadlocks.

### Be Cautious with Channel Direction

When passing channels to functions, use channel direction to indicate whether the channel is meant for sending or receiving. This makes the code more readable and prevents misuse.

Example:

```go

package main

import "fmt"

// sendData only sends data on the channel
func sendData(ch chan<- int) {
    ch <- 42
}

// receiveData only receives data from the channel
func receiveData(ch <-chan int) {
    fmt.Println(<-ch)
}

func main() {
    ch := make(chan int)
    go sendData(ch)
    receiveData(ch)
}
```

Explanation:

- `chan<-` indicates that the channel is for sending only.
- <-chan indicates that the channel is for receiving only.

### Avoid Goroutine Leaks

Ensure that all goroutines complete their work and do not leave any unfinished operations that are waiting indefinitely on channels. This can be achieved by closing channels and ensuring that all data is read from channels.

Example:

```go

package main

import "fmt"

func worker(ch chan int) {
    for i := 0; i < 5; i++ {
        ch <- i
    }
    close(ch) // Ensure channel is closed to avoid leaks
}

func main() {
    ch := make(chan int)
    go worker(ch)

    for value := range ch {
        fmt.Println(value)
    }
}
```

Explanation:

- The worker function closes the channel, ensuring that the goroutine does not leak.

### Use Cases of Channels in Go

1. __Goroutine Synchronization__: Channels can be used to synchronize the completion of goroutines, ensuring that one or more goroutines finish their tasks before proceeding.

2. __Task Distribution__: Distribute tasks among multiple worker goroutines using channels, enabling concurrent processing of tasks in a controlled manner.

3. __Data Pipelining__: Implement pipelines where data flows through a series of stages, each handled by a separate goroutine, with channels passing data between stages.

4. __Resource Pooling__: Manage a pool of resources (e.g., database connections, workers) by having goroutines request and release resources via channels, maintaining controlled access.

5. __Event Notification__: Use channels to notify goroutines about events, such as the arrival of data, a timeout, or the availability of a resource.

6. __Rate Limiting__: Implement rate limiting by controlling the number of requests or tasks processed over a certain period using channels to manage timing and task submission.

7. __Fan-in/Fan-out Patterns__: Combine multiple input channels into one (fan-in) or distribute work from one channel to multiple goroutines (fan-out), balancing workloads or aggregating results.

8. __Error Handling and Reporting__: Send error reports or status updates from worker goroutines to a central error-handling goroutine via channels, centralizing error management.

9. __Graceful Shutdown__: Coordinate the shutdown of multiple goroutines by signaling them through channels, ensuring they complete their tasks before the application exits.

10. __Progress Reporting__: Track and report the progress of long-running tasks in real-time by sending progress updates through channels to a monitoring goroutine.
