---
tags:
- ready
- online
- reviewed
- summary
- informatic
- concurrency
- scheduler
- advanced
- goroutines
- mutex
- go
- data-transference
---

# mutex

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/mutex)__

## Mutex

Go allows us to run code concurrently using goroutines. However, when concurrent processes access the same piece of data, it can lead to [race conditions](https://www.sohamkamani.com/golang/data-races/). Mutexes are data structures provided by the [sync](https://pkg.go.dev/sync/) package. They can help us place a lock on different sections of data so that only one [[goroutines]] can access it at a time.

- [@article@Using a Mutex in Go with Examples](https://www.sohamkamani.com/golang/mutex/)

### Best Practices for Using Mutexes in Go

A `Mutex` in Go is a synchronization primitive that can be used to protect shared resources from concurrent access, ensuring that only one goroutine can access the critical section at a time. While `Mutex` is powerful, improper usage can lead to deadlocks, performance bottlenecks, and other concurrency issues. Here are some best practices for using `Mutex` in Go:

#### Summary

- __Minimize the critical section__ to reduce contention and increase concurrency.
- __Use `defer` to ensure `Mutex` is always unlocked__, even in cases of panic or early return.
- __Consider `sync.RWMutex`__ for read-heavy scenarios to improve performance.
- __Avoid copying `Mutexes`__, as it can lead to unpredictable behavior.
- __Maintain a consistent locking order__ to prevent deadlocks.
- __Use `sync.Cond`__ for advanced synchronization needs like signaling.
- __Prefer channels for goroutine coordination__ when possible, as they are often simpler and more idiomatic.
- __Document `Mutex` usage clearly__ to help others understand the concurrency model.
- __Test with the race detector__ to catch subtle race conditions early in development.

#### 1. __Minimize the Critical Section__

- __Keep Lock Scope Small__: Hold the `Mutex` lock for the shortest time possible. Avoid performing I/O operations, long computations, or blocking calls while holding the lock, as this can reduce concurrency and lead to bottlenecks.

__Example__:

```go
var mu sync.Mutex
var counter int

func increment() {
    mu.Lock()
    counter++ // Only critical section is protected
    mu.Unlock()
}
```

#### 2. __Always Unlock in a `defer` Statement__

- __Use `defer` for Unlocking__: To ensure that a locked `Mutex` is always unlocked, even if a panic occurs or the function returns early, use a `defer` statement immediately after locking the `Mutex`.

__Example__:

```go
func updateCounter() {
    mu.Lock()
    defer mu.Unlock() // Ensures the lock is released
    counter++
}
```

#### 3. __Use `sync.RWMutex` for Read-Heavy Scenarios__

- __Read-Write Locks__: If your application has more reads than writes, consider using `sync.RWMutex`. This allows multiple readers to hold the lock simultaneously, improving performance in read-heavy scenarios.

__Example__:

```go
var rwMu sync.RWMutex
var data = make(map[string]string)

func readData(key string) string {
    rwMu.RLock()
    defer rwMu.RUnlock()
    return data[key]
}

func writeData(key, value string) {
    rwMu.Lock()
    defer rwMu.Unlock()
    data[key] = value
}
```

#### 4. __Avoid Copying Mutexes__

- __Don't Copy__: Never copy a `Mutex` or `RWMutex` after it has been used. Copying a `Mutex` can lead to unpredictable behavior and bugs that are hard to trace.

__Example__:

```go
type SafeCounter struct {
    mu sync.Mutex
    count int
}

func (sc *SafeCounter) Increment() {
    sc.mu.Lock()
    defer sc.mu.Unlock()
    sc.count++
}

// Do not copy SafeCounter or its Mutex
```

#### 5. __Locking Order and Avoiding Deadlocks__

- __Consistent Locking Order__: When multiple `Mutexes` are involved, always acquire the locks in a consistent order to avoid deadlocks. Deadlocks occur when two or more goroutines hold a lock and are waiting to acquire a lock that the other holds.

__Example__:

```go
var mu1, mu2 sync.Mutex

func safeOperation() {
    mu1.Lock()
    defer mu1.Unlock()
    
    mu2.Lock()
    defer mu2.Unlock()

    // Perform operations
}
```

#### 6. __Use `sync.Cond` for Signaling__

- __Synchronization with Condition Variables__: If you need to coordinate goroutines beyond simple mutual exclusion (e.g., signaling one or more goroutines that a condition is true), use `sync.Cond` with a `Mutex`.

__Example__:

```go
var mu sync.Mutex
var cond = sync.NewCond(&mu)

func waitForCondition() {
    mu.Lock()
    cond.Wait() // Wait until a signal is received
    // Perform operations after being signaled
    mu.Unlock()
}

func signalCondition() {
    mu.Lock()
    cond.Signal() // Signal one waiting goroutine
    mu.Unlock()
}
```

#### 7. __Consider Using Channels for Coordination__

- __Channels as an Alternative__: In many cases, using channels can be a simpler and more idiomatic way to handle synchronization and communication between goroutines, avoiding the need for `Mutexes` entirely.

__Example__:

```go
ch := make(chan int)

go func() {
    ch <- 42 // Send data to channel
}()

result := <-ch // Receive data from channel
fmt.Println(result)
```

#### 8. __Document Mutex Usage Clearly__

- __Clarify Intent__: Always document why and how a `Mutex` is being used, especially in complex systems where multiple `Mutexes` might be involved. This helps other developers (and your future self) understand the concurrency model and avoid mistakes.

__Example__:

```go
// mu protects the counter variable
var mu sync.Mutex
var counter int

func increment() {
    mu.Lock()
    defer mu.Unlock()
    counter++
}
```

#### 9. __Use `TryLock` When Appropriate__

- __Non-blocking Locks__: If you need to attempt to acquire a lock without blocking, consider implementing a "try lock" mechanism using channels or atomics, as Go's `sync.Mutex` does not provide a built-in `TryLock` method.

__Example__ (simple try-lock using channels):

```go
type TryMutex struct {
    ch chan struct{}
}

func NewTryMutex() *TryMutex {
    return &TryMutex{ch: make(chan struct{}, 1)}
}

func (m *TryMutex) Lock() {
    m.ch <- struct{}{}
}

func (m *TryMutex) Unlock() {
    <-m.ch
}

func (m *TryMutex) TryLock() bool {
    select {
    case m.ch <- struct{}{}:
        return true
    default:
        return false
    }
}
```

#### 10. __Test Concurrent Code Thoroughly__

- __Use Go's Race Detector__: Always test code involving `Mutexes` with Go’s race detector (`go run -race`) to catch race conditions that might not be apparent in normal testing.
