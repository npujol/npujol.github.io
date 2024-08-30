---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - ready
---

# heaps-stacks-queues

## Contents

### Heaps Stacks and Queues

__Stacks:__ Operations are performed LIFO (last in, first out), which means that the last element added will be the first one removed. A stack can be implemented using an array or a linked list. If the stack runs out of memory, it’s called a stack overflow.

__Queue:__ Operations are performed FIFO (first in, first out), which means that the first element added will be the first one removed. A queue can be implemented using an array.

__Heap:__ A tree-based data structure in which the value of a parent node is ordered in a certain way with respect to the value of its child node(s). A heap can be either a min heap (the value of a parent node is less than or equal to the value of its children) or a max heap (the value of a parent node is greater than or equal to the value of its children).

Visit the following resources to learn more:

- [articleHeaps, Stacks, Queues](https://stephanosterburg.gitbook.io/scrapbook/coding/coding-interview/data-structures/heaps-stacks-queues)
- [articleHow to Implement Python Stack?](https://realpython.com/how-to-implement-python-stack/)
- [articlePython Stacks, Queues, and Priority Queues in Practice](https://realpython.com/queue-in-python/)
- [articleHeap Implementation in Python](https://www.educative.io/answers/heap-implementation-in-python)
- [videoStack Data Structure | Illustrated Data Structures](https://www.youtube.com/watch?v=I5lq6sCuABE)
- [videoQueue Data Structure | Illustrated Data Structures](https://www.youtube.com/watch?v=mDCi1lXd9hc)

| Characteristic     | Heap                                      | Stack                                  | Queue                                   |
|--------------------|-------------------------------------------|----------------------------------------|-----------------------------------------|
| __Definition__     | A complete binary tree where each node is greater than or equal to its children (max-heap) or less than or equal to its children (min-heap). | A linear data structure that follows Last In, First Out (LIFO) order. | A linear data structure that follows First In, First Out (FIFO) order. |
| __Operations__     | - Insert<br\>- Extract max/min<br\>- Peek | - Push<br\>- Pop<br\>- Peek              | - Enqueue<br\>- Dequeue<br\>- Peek        |
| __Insertion Time__ | O(log n)                                  | O(1)                                   | O(1)                                    |
| __Deletion Time__  | O(log n)                                  | O(1)                                   | O(1)                                    |
| __Access Time__    | O(1) for the root element (max/min), but O(n) for searching a specific element | O(1) for top element                    | O(1) for front element                   |
| __Usage__          | Priority queues, heap sort                | Function call management, expression evaluation | Scheduling tasks, breadth-first search |
| __Memory Structure__ | Complete binary tree (not necessarily contiguous) | Contiguous memory (array) or linked list | Contiguous memory (array) or linked list |
| __Implementation__ | Usually implemented using arrays.         | Implemented with arrays or linked lists. | Implemented with arrays or linked lists. |
| __Example Operations__ | - Insert an element into a heap.<br\>- Extract the maximum element.<br\>- Peek at the maximum element. | - Push a new element onto the stack.<br\>- Pop the top element.<br\>- Peek at the top element. | - Enqueue a new element.<br\>- Dequeue the front element.<br\>- Peek at the front element. |
| __Complexity for Search__ | O(n) for searching a specific element. | O(n) for searching a specific element. | O(n) for searching a specific element. |

| Data Structure | Library              | Example Usage                                                      |
|----------------|----------------------|--------------------------------------------------------------------|
| __Heap__       | `heapq`              | Provides a heap queue algorithm, also known as the priority queue. <br\> __Example:__ <br\> ```python <br> import heapq <br> heap = [] <br> heapq.heappush(heap, 10) <br> heapq.heappush(heap, 5) <br> print(heapq.heappop(heap)) # Outputs 5 <br>``` |
| __Stack__      | `collections.deque` | `deque` can be used as a stack due to its efficient appends and pops from both ends. <br\> __Example:__ <br\> ```python <br> from collections import deque <br> stack = deque() <br> stack.append(1) <br> stack.append(2) <br> print(stack.pop()) # Outputs 2 <br>``` |
| __Queue__      | `queue`              | Provides various queue implementations including `Queue`, `LifoQueue`, and `PriorityQueue`. <br\> __Example:__ <br\> ```python <br> from queue import Queue <br> q = Queue() <br> q.put(1) <br> q.put(2) <br> print(q.get()) # Outputs 1 <br>``` |
