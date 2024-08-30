---
tags:
  - ready
  - python
  - online
  - concurrency
---
# python-concurrency

## Concurrency

Concurrency in Python allows multiple tasks to be executed simultaneously using different approaches. GIL (Global Interpreter Lock) limits thread execution, making multithreading less efficient for computational tasks, but suitable for I/O. Multiprocessing, using the multiprocessing module, allows multiple cores to be utilized, providing true parallelism. Asynchrony via asyncio is optimal for I/O operations, allowing thousands of connections to be processed simultaneously without blocking. The choice of approach depends on the nature of the task.

Learn more about concurrency using the following resources:

- [officialPython Concurrency](https://realpython.com/python-concurrency/)

### Multiprocessing

Multiprocessing utilizes multiple processes, each with its own GIL. This allows full utilization of multiple processor cores, which is effective for computationally intensive tasks. Python’s multiprocessing module supports creating processes and exchanging data between them.

- [officialOfficial Documentation](https://docs.python.org/3/library/multiprocessing.html)
- [articleMultiprocessing in Python with Example](https://www.digitalocean.com/community/tutorials/python-multiprocessing-example)
- [articleMultiprocessing in Python](https://realpython.com/python-multiprocessing/)

### Asynchrony

Asynchronous programming, supported by asyncio, allows code to be executed without blocking, using async and await. This is especially useful for I/O tasks such as networking or file manipulation, allowing thousands of connections to be handled without blocking the main thread.

- [officialPython AsyncIO library](https://docs.python.org/3/library/asyncio.html)
- [articleAsync IO in Python: A Complete Walkthrough](https://realpython.com/async-io-python/)

### GIL

GIL is a mechanism that allows only one thread to execute Python code at a time. This limitation is related to memory management in CPython and can reduce the efficiency of multithreaded applications on multi-core systems.

Learn more about it using the following resources:

- [articleWhat is GIL?](https://realpython.com/python-gil/)

### Threading

Multithreading allows multiple threads within a single process. However, because of GIL, threads cannot run in parallel on different cores, which makes multithreading suitable for I/O tasks (e.g., network requests) but not for computational tasks.

- [officialPython Threading Library](https://docs.python.org/3/library/threading.html)
- [articleIntroduction to Threading in Python](https://realpython.com/intro-to-python-threading/)

| Concurrency Mechanism                   | Description                                                                                                                                      | Use Case                                                                               | Example Libraries/Modules                                   | Limitations                                                                                                  |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ |
| __Threading__                           | Uses threads to run code concurrently within a single process. Threads share the same memory space.                                              | I/O-bound tasks like network requests, file I/O, and background tasks.                 | `threading`, `concurrent.futures.ThreadPoolExecutor`        | Python’s Global Interpreter Lock (GIL) limits true parallel execution of threads for CPU-bound tasks.        |
| __Multiprocessing__                     | Uses multiple processes to run code in parallel, each with its own memory space.                                                                 | CPU-bound tasks like data processing, computation, and parallel algorithms.            | `multiprocessing`, `concurrent.futures.ProcessPoolExecutor` | Higher memory usage due to separate process space, slower inter-process communication compared to threading. |
| __Asyncio__                             | A library for writing concurrent code using the `async`/`await` syntax, designed for I/O-bound tasks.                                            | High-concurrency I/O-bound tasks like handling many network connections or APIs.       | `asyncio`, `aiohttp`, `asyncpg`                             | Requires a cooperative multitasking approach, not suitable for CPU-bound tasks.                              |
| __Coroutines__                          | Functions that can be paused and resumed, allowing for cooperative multitasking within a single thread.                                          | Lightweight tasks like event loops, asynchronous I/O, and cooperative multitasking.    | `asyncio`, `trio`, `curio`                                  | Dependent on event loop, requires careful design to avoid blocking operations.                               |
| __Event-Driven Programming__            | A paradigm where the flow of the program is determined by events like user actions, sensor outputs, or messages from other programs.             | GUI applications, network servers, or any application that needs to respond to events. | `asyncio`, `Twisted`, `Tornado`                             | Complexity increases with the number of event sources and handlers.                                          |
| __Green Threads (Cooperative Threads)__ | Lightweight threads that are managed by a user-space scheduler rather than the OS.                                                               | Simulating concurrency with less overhead for tasks like I/O-bound operations.         | `greenlet`, `gevent`                                        | Less effective for CPU-bound tasks, not truly parallel as they rely on cooperative multitasking.             |
| __Concurrent Futures__                  | A high-level interface for asynchronously executing function calls using threads or processes.                                                   | Simplifying concurrent execution for both I/O-bound and CPU-bound tasks.               | `concurrent.futures`                                        | Still subject to GIL limitations when using threads.                                                         |
| __Reactive Programming__                | Programming with asynchronous data streams, responding to events or data changes.                                                                | Complex event-driven applications, real-time data processing, and GUIs.                | `RxPY`, `asyncio`, `Twisted`                                | Requires a different mindset and approach to traditional programming models.                                 |
| __Distributed Computing__               | Involves distributing tasks across multiple machines, often used for large-scale computation or processing.                                      | Large-scale parallel processing, data analysis, and machine learning.                  | `Dask`, `Ray`, `Celery`, `PySpark`                          | Requires infrastructure for managing and coordinating tasks across multiple nodes.                           |
| __Gevent__                              | A coroutine-based Python networking library that uses greenlets to provide a high-level synchronous API on top of the libev or libuv event loop. | High-concurrency I/O-bound tasks, similar to `asyncio` but with a different model.     | `gevent`                                                    | Requires monkey patching, which can lead to compatibility issues with some libraries.                        |
