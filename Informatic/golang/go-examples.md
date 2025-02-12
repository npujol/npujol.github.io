---
tags:
  - go
  - online
  - ready
  - tutorial
---

# go-example-content

## Contents

- [[go-basic-server-structure]]

## Go concurrency patterns

https://go.dev/blog/pipelines

I'll explain Go's concurrency patterns and their design philosophy. Note that while I'll reference sources, you should verify them as I don't have direct access to real-time sources.

The key concurrency patterns in Go were primarily influenced by Tony Hoare's Communicating Sequential Processes (CSP) paper from 1978, and Rob Pike's experience with concurrent programming in various systems including Plan 9.

Let's break down the main patterns:

1. **Goroutines and Channels Pattern**

This is the fundamental pattern in Go, following the CSP principle "Don't communicate by sharing memory; share memory by communicating."

Let's analyze why Go chose these patterns:

1. **Goroutines over Threads**
   - **Why**: Traditional threads have high overhead (1MB+ stack size)
   - **Go's Solution**: Goroutines start with small stack (2KB) that can grow
   - **Source**: [Go FAQ](https://golang.org/doc/faq#goroutines)

2. **Channels over Shared Memory**
   - **Why**: Shared memory leads to race conditions and complex locking
   - **Go's Solution**: Channels provide synchronized communication
   - **Source**: Pike, Rob. "Go Concurrency Patterns" (Google I/O 2012)

3. **Select Pattern**
   - **Why**: Need to handle multiple concurrent operations
   - **Go's Solution**: Select provides a way to choose between multiple channel operations
   - **Source**: Effective Go documentation

4. **Context Package**
   - **Why**: Need for cancellation and deadline propagation across API boundaries
   - **Go's Solution**: Context package provides a standard way to handle cancellation
   - **Source**: Sameer Ajmani's "Go Concurrency Patterns: Context" blog post

Design Decisions:

1. **Simplicity**
   - Go's concurrency model is designed to be simple and understandable
   - No complex abstractions like promises or futures
   - Based on few, well-understood primitives

2. **CSP Influence**
   - Directly inspired by Hoare's CSP paper
   - Channels as the primary means of synchronization
   - Goroutines as lightweight processes

3. **Built-in Support**
   - Concurrency is built into the language, not a library
   - Keywords: `go`, `chan`, `select`
   - Compiler and runtime support for efficient scheduling

4. **Memory Model**
   - Clear memory model specification
   - Helps prevent data races
   - Makes concurrent programming more predictable

Common Use Cases and Patterns:

1. **Pipeline Pattern**
   - For data processing stages
   - Each stage connected by channels
   - Easy to add/remove stages

2. **Fan-Out/Fan-In**
   - Distribute work across multiple goroutines
   - Collect results back into single channel
   - Useful for parallel processing

3. **Pub/Sub Pattern**
   - One publisher, multiple subscribers
   - Non-blocking message distribution
   - Event-driven architectures

4. **Rate Limiting**
   - Control resource usage
   - Prevent system overload
   - Time-based operations management

References (Please verify these):
1. Pike, Rob. "Go Concurrency Patterns" (Google I/O 2012)
2. Hoare, C.A.R. "Communicating Sequential Processes" (1978)
3. Go Blog: "Share Memory By Communicating"
4. Effective Go Documentation
5. Cox, Russ. "Go Memory Model"

```go
// Basic Channel Pattern
func generator(nums []int) <-chan int {
    out := make(chan int)
    go func() {
        defer close(out)
        for _, n := range nums {
            out <- n
        }
    }()
    return out
}

// Fan-Out Pattern
func fanOut(in <-chan int, workers int) []<-chan int {
    outputs := make([]<-chan int, workers)
    for i := 0; i < workers; i++ {
        outputs[i] = worker(in)
    }
    return outputs
}

func worker(in <-chan int) <-chan int {
    out := make(chan int)
    go func() {
        defer close(out)
        for n := range in {
            result := heavyComputation(n)
            out <- result
        }
    }()
    return out
}

// Fan-In Pattern
func fanIn(channels ...<-chan int) <-chan int {
    var wg sync.WaitGroup
    multiplexed := make(chan int)

    wg.Add(len(channels))
    for _, c := range channels {
        go func(ch <-chan int) {
            defer wg.Done()
            for i := range ch {
                multiplexed <- i
            }
        }(c)
    }

    go func() {
        wg.Wait()
        close(multiplexed)
    }()

    return multiplexed
}

// Pipeline Pattern
func pipeline() {
    // Stage 1: Generate numbers
    nums := []int{1, 2, 3, 4, 5}
    generator := generator(nums)

    // Stage 2: Fan out the work
    workers := fanOut(generator, 3)

    // Stage 3: Fan in the results
    results := fanIn(workers...)

    // Stage 4: Consume results
    for result := range results {
        fmt.Println(result)
    }
}

// Error Handling Pattern
type Result struct {
    Value int
    Err   error
}

func errorHandler() {
    ch := make(chan Result)
    go func() {
        defer close(ch)
        // Do some work that might fail
        value, err := riskyOperation()
        ch <- Result{Value: value, Err: err}
    }()

    result := <-ch
    if result.Err != nil {
        log.Fatal(result.Err)
    }
    // Use result.Value
}

// Context Pattern for Cancellation
func withContext(ctx context.Context) error {
    operation := make(chan Result)
    
    go func() {
        defer close(operation)
        // Simulate long operation
        time.Sleep(2 * time.Second)
        operation <- Result{Value: 42, Err: nil}
    }()

    select {
    case <-ctx.Done():
        return ctx.Err()
    case result := <-operation:
        if result.Err != nil {
            return result.Err
        }
        return nil
    }
}

// Rate Limiting Pattern
func rateLimiter() {
    rate := time.Second / 10 // 10 operations per second
    throttle := time.Tick(rate)

    for req := range requests {
        <-throttle // Rate limit our operations
        go process(req)
    }
}

// Pub/Sub Pattern
type Subscriber struct {
    ch chan interface{}
}

type Publisher struct {
    subscribers []Subscriber
    messages    chan interface{}
}

func NewPublisher() *Publisher {
    return &Publisher{
        subscribers: make([]Subscriber, 0),
        messages:    make(chan interface{}),
    }
}

func (p *Publisher) Subscribe() Subscriber {
    sub := Subscriber{
        ch: make(chan interface{}),
    }
    p.subscribers = append(p.subscribers, sub)
    return sub
}

func (p *Publisher) Publish(msg interface{}) {
    for _, sub := range p.subscribers {
        go func(s Subscriber) {
            s.ch <- msg
        }(sub)
    }
}
```