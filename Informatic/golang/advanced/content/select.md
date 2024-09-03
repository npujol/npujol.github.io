---
tags:
- ready
- online
- reviewed
- summary
- informatic
- data-structure
- communication
- advanced
- concurrency
- goroutines
- go
---

# select

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/select)__

## Select

The `select` statement lets a goroutine wait on multiple communication operations.

A `select` blocks until one of its cases can run, then it executes that case. It chooses one at random if multiple are ready. The `select` statement is just like switch statement, but in the select statement, case statement refers to communication, i.e. sent or receive operation on the channel.

Visit the following resources to learn more:

- [@official@Select](https://go.dev/tour/concurrency/5)
- [@article@Go by Example: Select](https://gobyexample.com/select)
- [@video@Select Statement](https://www.youtube.com/watch?v=1c7ttSJDMAI)

### Best Practices for Using `select` in Go

The `select` statement in Go is a powerful tool for working with channels, allowing you to wait on multiple channel operations simultaneously. Proper use of `select` can make your concurrent programs more efficient and responsive. Here are some best practices for using `select` in Go:

- __Use `select` to manage multiple channels__, and ensure your program doesn't block unnecessarily.
- __Implement timeouts with `time.After`__ to avoid indefinite blocking.
- __Document the logic behind `select`__ to maintain code clarity and intention.
- __Be mindful of channel buffering__, as it influences how `select` behaves.
- __Close channels when appropriate__ to signal completion and prevent deadlocks.
- __Leverage `select` in fan-in and fan-out patterns__ for efficient concurrency management.

#### 1. __Handle Multiple Channels Gracefully__

- __Use `select` to Wait on Multiple Channels__: The primary use case for `select` is to listen to multiple channels simultaneously. This is useful when you need to handle different types of events or data that can arrive on different channels.

__Example__:

```go
select {
case msg := <-channel1:
    fmt.Println("Received from channel1:", msg)
case msg := <-channel2:
    fmt.Println("Received from channel2:", msg)
}
```

#### 2. __Always Provide a Default Case When Needed__

- __Avoid Blocking with a Default Case__: Including a `default` case ensures that the `select` statement does not block if none of the channels are ready. This is useful for non-blocking operations or when you want to avoid waiting indefinitely.

__Example__:

```go
select {
case msg := <-channel1:
    fmt.Println("Received:", msg)
default:
    fmt.Println("No messages, moving on")
}
```

- __Be Cautious with Default__: Overusing the `default` case can lead to busy-waiting (a loop that consumes CPU while waiting), so use it judiciously.

#### 3. __Implement Timeouts with `select`__

- __Use `time.After` for Timeouts__: To avoid blocking indefinitely when waiting for a channel, use `time.After` to implement a timeout. This ensures that your program can proceed if a channel operation takes too long.

__Example__:

```go
select {
case msg := <-channel1:
    fmt.Println("Received:", msg)
case <-time.After(5 * time.Second):
    fmt.Println("Timeout, no message received")
}
```

#### 4. __Prioritize Channels Using Order of Cases__

- __Order of Cases Matters__: When multiple channels are ready, the `select` statement picks one randomly. However, you can influence the behavior by ordering the cases. Place the more critical cases higher in the `select` block.

__Example__:

```go
select {
case criticalMsg := <-criticalChannel:
    // Handle critical message
case regularMsg := <-regularChannel:
    // Handle regular message
}
```

#### 5. __Avoid Empty `select` Statements__

- __Avoid Deadlocks with Empty `select`__: An empty `select {}` statement will block forever and can lead to deadlocks if not handled correctly. Use it only when intentional, such as waiting indefinitely for a signal.

__Example__:

```go
select {}
```

- __Use Sparingly__: This pattern should be used sparingly and typically only in specific scenarios, like testing or ensuring a goroutine doesn’t exit.

#### 6. __Close Channels to Signal Completion__

- __Gracefully Close Channels__: If you know that a channel will no longer receive data, close it. This allows a `select` to detect the closure and handle it appropriately, avoiding leaks or hangs in goroutines waiting on the channel.

__Example__:

```go
close(done)

select {
case <-done:
    fmt.Println("Channel closed")
}
```

#### 7. __Use `select` to Avoid Race Conditions__

- __Synchronize Operations__: Use `select` in conjunction with channels to synchronize operations and avoid race conditions. This is particularly useful when multiple goroutines need to coordinate work.

__Example__:

```go
done := make(chan struct{})

go func() {
    select {
    case <-done:
        fmt.Println("Goroutine 1 done")
    }
}()

go func() {
    select {
    case <-done:
        fmt.Println("Goroutine 2 done")
    }
}()

// Signal both goroutines to finish
close(done)
```

#### 8. __Be Mindful of Channel Buffering__

- __Buffered vs. Unbuffered Channels__: Understand the difference between buffered and unbuffered channels when using `select`. A buffered channel might not block immediately, affecting the behavior of your `select` cases.

__Example__:

```go
ch := make(chan int, 1)
ch <- 1

select {
case ch <- 2: // This will not block because of the buffer
    fmt.Println("Sent 2")
default:
    fmt.Println("Channel buffer full")
}
```

#### 9. __Document the `select` Logic__

- __Explain the Intent__: The behavior of `select` can be non-obvious, especially with multiple channels or default cases. Document the logic and reasoning behind your `select` statements to make the code easier to understand and maintain.

__Example__:

```go
select {
case msg := <-channel1:
    // Handle message from channel1
    // This case is prioritized because...
case <-time.After(5 * time.Second):
    // Timeout to ensure the program does not block indefinitely
    // Useful in case channel1 is unresponsive
}
```

#### 10. __Use `select` for Fan-in and Fan-out Patterns__

- __Fan-In__: Use `select` to combine multiple channels into one. This pattern allows you to aggregate data from different sources and handle it in a single place.

__Example__:

```go
for {
    select {
    case msg := <-chan1:
        fmt.Println("Received from chan1:", msg)
    case msg := <-chan2:
        fmt.Println("Received from chan2:", msg)
    }
}
```

- __Fan-Out__: Distribute work from one channel to multiple goroutines using `select`. This pattern helps in load balancing work across multiple workers.

__Example__:

```go
for {
    select {
    case msg := <-inputChan:
        go worker1(msg)
    case msg := <-inputChan:
        go worker2(msg)
    }
}
```
