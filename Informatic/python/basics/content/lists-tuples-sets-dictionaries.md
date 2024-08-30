---
tags:
  - reviewed
  - python
  - programming-language
  - loops
  - data-structures
  - ready
---

# lists-tuples-sets-dictionaries

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-basics/lists-tuples-sets-dictionaries)__

## Lists, Tuples, Sets, and Dictionaries

__Lists:__ are just like dynamic sized arrays, declared in other languages (vector in C++ and ArrayList in Java). Lists need not be homogeneous always which makes it the most powerful tool in Python.

__Tuple:__ A Tuple is a collection of Python objects separated by commas. In some ways, a tuple is similar to a list in terms of indexing, nested objects, and repetition but a tuple is immutable, unlike lists that are mutable.

__Set:__ A Set is an unordered collection data type that is iterable, mutable, and has no duplicate elements. Python’s set class represents the mathematical notion of a set.
s
__Dictionary:__ In python, Dictionary is an ordered (since Py 3.7) [unordered (Py 3.6 & prior)] collection of data values, used to store data values like a map, which, unlike other Data Types that hold only a single value as an element, Dictionary holds key:value pair. Key-value is provided in the dictionary to make it more optimized.

Visit the following resources to learn more:

- [@video@Difference Between List, Tuple, Set and Dictionary in Python](https://www.youtube.com/watch?v=n0krwG38SHI)
- [@article@Tuples vs. Lists vs. Sets in Python](https://jerrynsh.com/tuples-vs-lists-vs-sets-in-python/)
- [@article@Python for Beginners: Lists](https://thenewstack.io/python-for-beginners-lists/)
- [@article@Python for Beginners: When and How to Use Tuples](https://thenewstack.io/python-for-beginners-when-and-how-to-use-tuples/)

| Feature               | Lists                           | Tuples                         | Sets                            | Dictionaries                    |
|-----------------------|---------------------------------|--------------------------------|---------------------------------|---------------------------------|
| __Syntax__            | `[1, 2, 3]`                     | `(1, 2, 3)`                    | `{1, 2, 3}`                     | `{'key1': 'value1', 'key2': 'value2'}` |
| __Ordered__           | Yes                             | Yes                            | No                              | Yes (insertion order since Python 3.7) |
| __Mutable__           | Yes                             | No                             | Yes                             | Yes                             |
| __Allows Duplicates__ | Yes                             | Yes                            | No                              | Keys: No, Values: Yes           |
| __Indexing__          | Yes                             | Yes                            | No                              | Keys used for accessing values |
| __Heterogeneous__     | Yes                             | Yes                            | Yes                             | Yes                             |
| __Use Case__          | Ordered collection of items     | Immutable ordered collection   | Unordered collection of unique items | Collection of key-value pairs  |
| __Methods Available__ | Many (e.g., append, pop, sort)  | Few (e.g., count, index)       | Few (e.g., add, remove, union)  | Many (e.g., keys, values, items, get) |
| __Memory Efficiency__ | Less efficient than tuples      | More efficient than lists      | Varies (no duplicates, so potentially more efficient for unique items) | Depends on the size and hash function of keys |
| __Iteration__         | Yes                             | Yes                            | Yes                             | Yes                             |
| __Creation__          | `[1, 2, 3]`                     | `(1, 2, 3)`                    | `{1, 2, 3}`                     | `{'key': 'value'}`              |
| __Comprehensions__    | List comprehensions (`[x for x in iterable]`) | Not directly, but can cast to list comprehension | Set comprehensions (`{x for x in iterable}`) | Dictionary comprehensions (`{k: v for k, v in iterable}`) |
| __Key Characteristics__| Flexible, mutable, and allows duplicates | Immutable, can be used as keys in dictionaries | Unordered, no duplicates allowed | Maps unique keys to values      |
