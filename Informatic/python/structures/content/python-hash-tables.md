---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - ready
---

# hash-tables

## Contents

### Hash Tables

Hash Table, Map, HashMap, Dictionary or Associative are all the names of the same data structure. It is a data structure that implements a set abstract data type, a structure that can map keys to values.

Visit the following resources to learn more:

Free Resources

---

- [articleHash Tables and Hashmaps in Python](https://www.edureka.co/blog/hash-tables-and-hashmaps-in-python/)
- [articleBuild a Hash Table in Python](https://realpython.com/python-hash-table/)
- [videoHash Table Data Structure | Illustrated Data Structures](https://www.youtube.com/watch?v=jalSiaIi8j4)

| Characteristic        | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| __Definition__        | A hash table is a data structure that maps keys to values using a hash function to compute an index into an array of buckets or slots. |
| __Hash Function__     | A function that converts a key into an index for the hash table. It helps in determining where to store the value associated with the key. |
| __Collision Handling__| Techniques like chaining (using linked lists) or open addressing (probing) are used to handle cases where multiple keys hash to the same index. |
| __Access Time__       | Average-case O(1) for lookups, insertions, and deletions. Performance may degrade to O(n) in worst-case scenarios with poor hash functions or high collision rates. |
| __Memory Usage__      | Hash tables typically use extra memory for the array and pointers (in case of chaining). The memory usage depends on the load factor and hash table size. |
| __Dynamic Resizing__  | Many implementations resize the hash table when the load factor exceeds a threshold to maintain performance. |
| __Applications__      | Used in various applications including caching, indexing, and associative arrays. |
| __Python Libraries__  | Python's built-in dictionary (`dict`) is a hash table implementation. Other libraries also provide hash table implementations for specialized use cases. |

### Examples of Hash Table Implementations in Python

| Library       | Example Usage                                                      |
|---------------|--------------------------------------------------------------------|
| __Built-in `dict`__ | Python's built-in dictionary is a hash table implementation. <br\> __Example:__ <br\> ```python <br> my_dict = {} <br> my_dict['key'] = 'value' <br> print(my_dict['key']) # Outputs 'value' <br>``` |
| __`collections.defaultdict`__ | A subclass of the built-in dictionary that returns a default value if a key is not found. <br\> __Example:__ <br\> ```python <br> from collections import defaultdict <br> dd = defaultdict(int) <br> dd['key'] += 1 <br> print(dd['key']) # Outputs 1 <br>``` |
| __`hashlib`__ | Provides hash functions to create hash values but does not directly implement hash tables. <br\> __Example:__ <br\> ```python <br> import hashlib <br> hash_value = hashlib.md5(b'key').hexdigest() <br> print(hash_value) <br>``` |
