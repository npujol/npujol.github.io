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

---

# goroutines

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-advanced/goroutines)__

## Goroutines

Goroutines allow us to write concurrent programs in Go. Things like web servers handling thousands of requests or a website rendering new pages while also concurrently making network requests are a few example of concurrency.

In Go, each of these concurrent tasks are called `Goroutines`.

- [@official@Goroutines](https://go.dev/tour/concurrency/1)
- [@official@Effective Go: Goroutines](https://go.dev/doc/effective_go#goroutines)
- [@video@GoRoutines](https://www.youtube.com/watch?v=LvgVSSpwND8)
- [@video@Understanding Concurrency](https://www.youtube.com/watch?v=V-0ifUKCkBI)
- [@article@Go by Example: Goroutines](https://gobyexample.com/goroutines)
- [@video@Golang Goroutine Basics You MUST Learn! (by Golang Dojo on YouTube)](https://youtu.be/oHIbeTmmTaA)
- [@feed@Explore top posts about Golang](https://app.daily.dev/tags/golang?ref=roadmapsh)

### Best Practices for Using Goroutines in Go

- __Control the Number of Goroutines__: Use worker pools or rate-limiting to prevent resource exhaustion.
- __Communicate via Channels__: Use channels to safely pass data between goroutines and avoid shared memory.
- __Manage Goroutine Lifecycles__: Use `context` for cancellation and `defer` for cleanup.
- __Prevent Goroutine Leaks__: Ensure all goroutines exit properly and channels are closed.
- __Synchronize with WaitGroup__: Use `sync.WaitGroup` to wait for multiple goroutines to complete.
- __Handle Panics__: Recover from panics within goroutines to avoid crashes.
- __Optimize Scheduling__: Avoid unnecessary blocking in critical sections and yield to the scheduler when needed.
- __Test Concurrent Code__: Use the race detector and stress-test your code to ensure robustness.

#### 1. __Limit the Number of Goroutines__

- __Avoid Spawning Uncontrolled Goroutines__: Spawning too many goroutines can exhaust system resources, leading to performance degradation. Use worker pools or rate-limiting techniques to control the number of active goroutines.

__Example__: Use a worker pool pattern to limit the number of concurrent workers.

```go
package main

import (
    "fmt"
    "sync"
)

func worker(id int, jobs <-chan int, wg *sync.WaitGroup) {
    defer wg.Done()
    for job := range jobs {
        fmt.Printf("Worker %d processing job %d\n", id, job)
    }
}

func main() {
    const numWorkers = 3
    jobs := make(chan int, 5)
    var wg sync.WaitGroup

    for i := 1; i <= numWorkers; i++ {
        wg.Add(1)
        go worker(i, jobs, &wg)
    }

    for j := 1; j <= 5; j++ {
        jobs <- j
    }
    close(jobs)

    wg.Wait() // Wait for all workers to finish
}
```

#### 2. __Use Channels for Communication and Synchronization__

- __Leverage Channels__: Channels are the preferred way to synchronize and communicate between goroutines. Avoid using shared memory or global variables to exchange data between goroutines, as this can lead to race conditions.

__Example__: Use channels to pass data between goroutines safely.

```go
package main

import (
    "fmt"
    "sync"
)

func sum(nums []int, ch chan<- int, wg *sync.WaitGroup) {
    defer wg.Done()
    total := 0
    for _, num := range nums {
        total += num
    }
    ch <- total
}

func main() {
    nums := []int{1, 2, 3, 4, 5, 6}
    ch := make(chan int)
    var wg sync.WaitGroup

    wg.Add(1)
    go sum(nums[:len(nums)/2], ch, &wg)

    wg.Add(1)
    go sum(nums[len(nums)/2:], ch, &wg)

    go func() {
        wg.Wait()
        close(ch)
    }()

    result := 0
    for partial := range ch {
        result += partial
    }

    fmt.Println("Total sum:", result)
}
```

#### 3. __Properly Handle Goroutine Lifecycles__

- __Always Clean Up Resources__: Use `defer` to ensure that resources like channels, files, or locks are properly released when a goroutine exits.

- __Use Contexts for Cancellation__: Utilize the `context` package to manage the lifecycle of goroutines, particularly for cancellation and timeouts. This allows you to stop goroutines gracefully.

__Example__: Use context to cancel goroutines.

```go
package main

import (
    "context"
    "fmt"
    "time"
)

func worker(ctx context.Context, id int) {
    for {
        select {
        case <-ctx.Done():
            fmt.Printf("Worker %d stopping\n", id)
            return
        default:
            fmt.Printf("Worker %d working\n", id)
            time.Sleep(500 * time.Millisecond)
        }
    }
}

func main() {
    ctx, cancel := context.WithTimeout(context.Background(), 2*time.Second)
    defer cancel()

    for i := 1; i <= 3; i++ {
        go worker(ctx, i)
    }

    time.Sleep(3 * time.Second)
    fmt.Println("Main function done")
}
```

#### 4. __Avoid Goroutine Leaks__

- __Ensure Goroutines Exit__: Always ensure that your goroutines exit when they are supposed to. This can be achieved by checking for signals or using channels and context.

- __Close Channels__: If a goroutine is waiting on a channel, ensure that the channel is closed when no more data will be sent. This prevents goroutines from blocking indefinitely.

__Example__: Prevent leaks by ensuring proper channel closure.

```go
package main

import (
    "fmt"
    "time"
)

func worker(ch <-chan int) {
    for job := range ch {
        fmt.Println("Processing job", job)
    }
    fmt.Println("Worker finished, channel closed")
}

func main() {
    ch := make(chan int)
    go worker(ch)

    for i := 1; i <= 5; i++ {
        ch <- i
    }
    close(ch) // Close the channel to signal completion

    time.Sleep(1 * time.Second)
}
```

#### 5. __Use Sync.WaitGroup for Waiting__

- __Sync Multiple Goroutines__: When you need to wait for multiple goroutines to finish, use `sync.WaitGroup`. This ensures that your main goroutine waits until all spawned goroutines complete their work.

__Example__: Use `sync.WaitGroup` to wait for goroutines to finish.

```go
package main

import (
    "fmt"
    "sync"
)

func worker(id int, wg *sync.WaitGroup) {
    defer wg.Done()
    fmt.Printf("Worker %d starting\n", id)
    // Simulate work
    fmt.Printf("Worker %d done\n", id)
}

func main() {
    var wg sync.WaitGroup

    for i := 1; i <= 3; i++ {
        wg.Add(1)
        go worker(i, &wg)
    }

    wg.Wait() // Wait for all goroutines to finish
    fmt.Println("All workers done")
}
```

#### 6. __Handle Panics Inside Goroutines__

- __Recover from Panics__: Panics inside goroutines can terminate your program if not handled properly. Use `defer` and `recover` to catch and handle panics within goroutines to avoid crashes.

__Example__: Use `recover` to handle panics in goroutines.

```go
package main

import (
    "fmt"
    "sync"
)

func worker(id int, wg *sync.WaitGroup) {
    defer wg.Done()
    defer func() {
        if r := recover(); r != nil {
            fmt.Printf("Worker %d recovered from panic: %v\n", id, r)
        }
    }()

    fmt.Printf("Worker %d starting\n", id)
    // Simulate a panic
    if id == 2 {
        panic("something went wrong")
    }
    fmt.Printf("Worker %d done\n", id)
}

func main() {
    var wg sync.WaitGroup

    for i := 1; i <= 3; i++ {
        wg.Add(1)
        go worker(i, &wg)
    }

    wg.Wait()
    fmt.Println("All workers done")
}
```

#### 7. __Consider Goroutine Scheduling__

- __Avoid Blocking Operations__: Avoid blocking operations (e.g., I/O, time.Sleep) in critical sections of your goroutines, as they can delay the execution of other goroutines and reduce concurrency.

- __Yield to Scheduler__: If you have a tight loop in a goroutine, consider adding a short sleep or `runtime.Gosched()` to yield to the Go scheduler, allowing other goroutines to run.

#### 8. __Test Concurrent Code Thoroughly__

- __Use Race Detector__: The Go race detector (`go run -race`) can identify race conditions in your code. Always run it when working with concurrent code.

- __Test with Different Loads__: Test your concurrent code under different loads and scenarios to ensure it behaves correctly under stress.
