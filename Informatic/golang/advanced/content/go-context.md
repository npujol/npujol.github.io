---
tags:
- ready
- online
- reviewed
- summary
- informatic
- context
- scheduler
- advanced
- requests
- go
- data-transference
---

# context

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/context)__

## Context

The `context` package provides a standard way to solve the problem of managing the state during a request. The package satisfies the need for request-scoped data and provides a standardized way to handle: Deadlines, Cancellation Signals, etc.

Visit the following resources to learn more:

- [@article@Go Context](https://pkg.go.dev/context)
- [@article@Go by Example: Context](https://gobyexample.com/context)
- [@article@Digital Ocean: How to Use Contexts in Go](https://www.digitalocean.com/community/tutorials/how-to-use-contexts-in-go)
- [@video@Context in Go](https://www.youtube.com/watch?v=LSzR0VEraWw)
- [@video@Understanding Contexts in Go](https://youtu.be/h2RdcrMLQAo)

### Example: Using the `context` Package with Channels in Go

The `context` package in Go is commonly used to manage the lifecycle of goroutines and handle cancellations, timeouts, and deadlines. Below is an example that demonstrates how to use `context` with [[go-channels]] to control the execution of worker goroutines.

#### Scenario

We have a task that runs in multiple goroutines. We want to ensure that these goroutines can be canceled if the task takes too long or if we decide to stop them prematurely.

#### Example Code

```go
package main

import (
    "context"
    "fmt"
    "time"
)

func worker(ctx context.Context, id int, ch chan<- int) {
    for {
        select {
        case <-ctx.Done():
            fmt.Printf("Worker %d: stopping\n", id)
            return
        case ch <- id:
            // Simulate some work
            fmt.Printf("Worker %d: working\n", id)
            time.Sleep(500 * time.Millisecond)
        }
    }
}

func main() {
    // Create a context with a timeout of 2 seconds
    ctx, cancel := context.WithTimeout(context.Background(), 2*time.Second)
    defer cancel() // Ensure the context is canceled to release resources

    ch := make(chan int)
    
    // Start 3 worker goroutines
    for i := 1; i <= 3; i++ {
        go worker(ctx, i, ch)
    }

    // Collect results from workers
    for i := 0; i < 6; i++ { // Collect 6 results
        select {
        case result := <-ch:
            fmt.Printf("Main: received result from worker %d\n", result)
        case <-ctx.Done():
            fmt.Println("Main: timeout, no more results")
            return
        }
    }
}
```

#### Explanation

1. __Context Creation__:
   - We create a context with a timeout of 2 seconds using `context.WithTimeout`.
   - The `defer cancel()` ensures that the context is canceled once the `main` function exits, which is important to avoid resource leaks.

2. __Worker Goroutines__:
   - The `worker` function simulates work and checks the context for cancellation using `select`.
   - If the context is done (due to timeout or manual cancellation), the worker stops executing and exits.

3. __Main Goroutine__:
   - The `main` function starts three worker goroutines and collects results from a channel.
   - It uses a `select` statement to either receive results from the workers or detect if the context has timed out.

4. __Output__:
   - The workers perform their tasks, but as soon as the context's timeout is reached, all workers stop, and the program exits gracefully.

This example shows how the `context` package can be used to control goroutine execution and ensure that your program can handle timeouts and cancellations cleanly.
