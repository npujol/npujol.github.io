---
tags:
- ready
- online
- reviewed
- go
---

# Go

## Parallel execution

- two programms execute in parallel if they execute at exactly the same time
- at time `t1` an instruction is being performed for both `P1` and `P2`, so need replated hardware

### Why use parallel execution

- task may complete more quickly
- some tasks must be performed sequentially
- some tasks can execute parallel and some are not

## Speedup without parallelism

- design faster processors
- demand scaling
- concurrent execution
  
## Concurrent execution vs parallel execution

- parallel tasks must be executed an different hardware
- concurrent tasks may be executed on the same hardware, only a task actually executed at a time
- mapping from tasks to hardware is not directly controlled by the programmer, at least not en Go

## Concurrent programming

- programmer determines which task can be executed in parallel
- mapping task to hardware, operating system, go runs time scheduler
  
### Hiding latency

- Concurrency improves performance even without parallelism
- task must periodically wait for something
- other concurrent tasks can operate while one task is waiting
  
### Hardware mapping in Go

- Programmer doesn't determine the hardware mapping
- Programmer make parallelism possible
- Hardware mapping depends on many factors

## Process

- an instance of a running program
- things that are unique to a process:
- memory: virtual address space, code, stack, heap, shared libraries
- registers: program counter, data registers, stack

## Operating System

- allow many processes to execute concurrently
- process are switched quickly
- user has the impression of parallelism
- OS must give process fail access to resources

### Scheduling process

- OS schedules processes for execution
- give the illusion of parallel execution
- OS gives fair access to CPU, memory and etc

### Context Switch

- control floe changes from one process to another
- process context must be swapped

### Threads vs Process

- Threads share the same context
- many threads can exist in one process
- OS schedules threads rather than processes

## Goroutine

- like a thread in Go
- Many goroutines execute within a single OS thread

## Go runtime scheduler

- schedules goroutines inside an OS thread
- like a little OS inside a single OS thread
- logical processor in mapped to a thread

## Interleaving

- Order of execution within a task in known
- Order of execution between concurrent task is unknown
- Interleaving of instructions between task is unknown
- many interleaving are possible
- must consider all possibilities
- ordering is non-deterministic

## Race conditions

- outcome depends on non-deterministic ordering
- Race happens fue to communication

## Communication between Tasks

- threads are longly independent but not completely independent

## Creating a Goroutine

- one go routine is created automatically to execute the `main()`
- Others goroutines are created using the `go` keyword
- a goroutine exist when it's code is completed
- when a main goroutine is completed, all others goroutines exist
- adding a delay to wait for a goroutine is a bad practice, because timing assumptions may be wrong
- use synchronization to handle with the communication between goroutines
  
## Synchronization

### Sync and WaitGroup

- package `sync` contains functions to synchronize between goroutines
- `sync.WaitGroup` forces a goroutine to wait for other goroutine
- `sync.WaitGroup` contains an internal counter:
- increase counter for each goroutine to wait for
- decrement counter when each goroutine completes
- waiting goroutine cannot continue until counter is 0

## Goroutines communication

- usually work together to perform a bigger task
- often need to send data to collaborate

## Channels

- Transfer data between goroutines
- Channel are typed
- use `make()` to create a channel

### Unbuffered channel

- cannot hold data in transit , default is unbuffered
- sending blocks until data is received
- receiving blocks until data in sent

### Blocking and Synchronization

- channel communication is synchronous
- blocking is the same as waiting for communication
- receiving and ignoring the result is the same as a wait

### Buffered channel

- can contains a limited number of objects, default 0
- capacity us the number of objects it can hold in transit
- sending only blocks if buffer is full
- receiving inly blocks if buffer is empty

## Select statement

- used to wait on the first data from a set of channels
- select send and receive the data
- can be used for a specific channel
- May wait to receive data until an abort signal is received
- may wait for a default operation to avoid blocking

## Goroutines sharing variables

- sharing variables concurrently can cause problems
- two goroutines writing to a shared variable can interferer with others

## Manual exclusion

- code segments in different goroutines which cannot execute concurrently
- writing tto shared variables should be mutually exclusive

## Sync Mutex

- A mutex ensure mutual exclusion
- uses a binary semaphore

## Synchronous initialization

- must happen once
- must happen before evert thing else
- How so you perform initialization with multiple goroutines?
- Could perform initialization before starting the goroutines?

### Dead lock

- circular dependencies cause all involved goroutines to block
- can be caused by waiting on channels
- goroutines runtime automatically detects when all routines are deadlocked
- Cannot detect when a subset of goroutines are dead locked
