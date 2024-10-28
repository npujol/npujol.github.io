---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - ready
---

# arrays-linked-lists

## Contents

Arrays store elements in contiguous memory locations, resulting in easily calculable addresses for the elements stored and this allows faster access to an element at a specific index. Linked lists are less rigid in their storage structure and elements are usually not stored in contiguous locations, hence they need to be stored with additional tags giving a reference to the next element. This difference in the data storage scheme decides which data structure would be more suitable for a given situation.

Visit the following resources to learn more:

- [articleArrays in Python](https://www.edureka.co/blog/arrays-in-python/)
- [articleLinked List Python](https://realpython.com/linked-lists-python/)
- [videoArray Data Structure | Illustrated Data Structures](https://www.youtube.com/watch?v=QJNwK2uJyGs)
- [videoLinked List Data Structure | Illustrated Data Structures](https://www.youtube.com/watch?v=odW9FU8jPRQ)

| Characteristic               | Arrays                                                                            | Linked Lists                                                              |
| ---------------------------- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| __Definition__               | A collection of elements stored in contiguous memory locations.                   | A collection of elements (nodes) where each node points to the next node. |
| __Memory Allocation__        | Fixed size and contiguous memory allocation.                                      | Dynamic size with non-contiguous memory allocation.                       |
| __Access Time__              | Constant time complexity O(1) for index-based access.                             | Linear time complexity O(n) for accessing an element by index.            |
| __Insertion Time__           | O(n) for insertion or deletion due to shifting elements.                          | O(1) for insertion or deletion if the position is known.                  |
| __Deletion Time__            | O(n) for deletion due to shifting elements.                                       | O(1) for deletion if the node is known.                                   |
| __Search Time__              | O(n) for searching an element.                                                    | O(n) for searching an element.                                            |
| __Memory Usage__             | Requires a fixed amount of memory; might waste space if not fully used.           | More memory overhead due to storing additional pointers.                  |
| __Dynamic Resizing__         | Fixed size; resizing involves creating a new array and copying elements.          | Naturally dynamic; grows or shrinks as needed.                            |
| __Cache Performance__        | Better cache locality due to contiguous memory.                                   | Poor cache performance due to non-contiguous memory.                      |
| __Implementation__           | Implemented directly in most programming languages.                               | Typically implemented using custom data structures or libraries.          |
| __Type of Data__             | Suitable for homogeneous data.                                                    | Suitable for both homogeneous and heterogeneous data.                     |
| __Complexity of Operations__ | Simple and efficient for fixed-size operations.                                   | More complex due to pointer management but flexible in size.              |
| __Examples__                 | `int arr[5] = {1, 2, 3, 4, 5};` in C/C++ <br\> `array = [1, 2, 3, 4, 5]` in Python | `Node` class with `data` and `next` pointers in custom implementations.   |
