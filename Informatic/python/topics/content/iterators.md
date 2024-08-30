---
tags:
  - reviewed
  - python
  - programming-language
  - algorithms
  - advanced
  - ready
---

# iterators

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-advanced-topics/iterators)__

## Iterators

An iterator is an object that contains a countable number of values. An iterator is an object that can be iterated upon, meaning that you can traverse through all the values. Technically, in Python, an iterator is an object which implements the iterator protocol, which consist of the methods __iter__() and __next__() .

Visit the following resources to learn more:

- [@article@Iterators in Python](https://www.w3schools.com/python/python_iterators.asp)
- [@article@Python Iterators](https://www.programiz.com/python-programming/iterator)

| Characteristic                     | Description                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| __Definition__                     | An iterator is an object that implements the iterator protocol, which consists of `__iter__()` and `__next__()` methods.                                                                                                                                                                                                                                                                                                                          |
| __Iterator Protocol__              | Consists of two methods: `__iter__()` (returns the iterator object itself) and `__next__()` (returns the next item or raises `StopIteration`).                                                                                                                                                                                                                                                                                                    |
| __Iterable vs. Iterator__          | An iterable is an object that can return an iterator (e.g., lists, tuples, dictionaries). An iterator is an object that performs the iteration.                                                                                                                                                                                                                                                                                                   |
| __Creating Iterators__             | Custom iterators can be created by defining a class with `__iter__()` and `__next__()` methods.                                                                                                                                                                                                                                                                                                                                                   |
| __Example__                        | ```python<br>class MyIterator:<br>    def __init__(self, limit):<br>        self.limit = limit<br>        self.current = 0<br>    def __iter__(self):<br>        return self<br>    def __next__(self):<br>        if self.current < self.limit:<br>            self.current += 1<br>            return self.current - 1<br>        else:<br>            raise StopIteration<br><br>it = MyIterator(3)<br>for value in it:<br>    print(value)``` |
| __Usage__                          | Used to iterate over sequences, custom collections, and other iterable data structures.                                                                                                                                                                                                                                                                                                                                                           |
| __Memory Efficiency__              | Iterators are memory efficient for large datasets as they generate items on-the-fly rather than storing them in memory.                                                                                                                                                                                                                                                                                                                           |
| __Lazy Evaluation__                | Iterators use lazy evaluation, meaning they compute values on demand and do not store them.                                                                                                                                                                                                                                                                                                                                                       |
| __Iteration Context__              | Iterators are commonly used in `for` loops, comprehensions, and generator expressions.                                                                                                                                                                                                                                                                                                                                                            |
| __Built-in Iterators__             | Python has many built-in iterators such as lists, tuples, strings, and ranges.                                                                                                                                                                                                                                                                                                                                                                    |
| __Infinite Iterators__             | Iterators like those created by `itertools.cycle` can be infinite, continually providing values unless explicitly stopped.                                                                                                                                                                                                                                                                                                                        |
| __Handling StopIteration__         | The `StopIteration` exception signals that iteration is complete and is handled automatically by `for` loops and comprehensions.                                                                                                                                                                                                                                                                                                                  |
| __Custom Iterators vs Generators__ | Custom iterators require defining a class with `__iter__()` and `__next__()`, while generators provide a simpler way to create iterators using `yield`.                                                                                                                                                                                                                                                                                           |
